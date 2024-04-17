import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/core/helpers/extension.dart';
import 'package:myapp/core/routing/routes.dart';
import 'package:myapp/core/theming/colors.dart';
import 'package:myapp/core/theming/styles.dart';
import 'package:myapp/features/sign_up_screen/logic/cubit/sign_up_cubit.dart';
import 'package:myapp/features/sign_up_screen/logic/cubit/sign_up_state.dart';

class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listenWhen: (previous, current) => current is SignUpLoading || current is SignUpSuccess || current is SignUpError,
      listener:(context, state){
        state.whenOrNull(
          signUploading: (){
            showDialog(
              context: context, 
              builder: (context)=> const Center(
                child: CircularProgressIndicator(color: AppColors.mainBlue,),
              ),
              );
          },
          signUpsuccess: (signUpResponse){
            context.pop();
            showSuccessDialog(context);
          },
          signUpfailure: (error) {
            setupErrorState(context, error);
          },
          
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Signup Successful'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Congratulations, you have signed up successfully!'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.blue, disabledForegroundColor: Colors.grey.withOpacity(0.38),
              ),
              onPressed: () {
                context.pushNamed(Routes.loginScreen);
              },
              child: const Text('Continue'),
            ),
          ],
        );
      },
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: TextStyles.font15DarkBlueMedium,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: TextStyles.font14BlueSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}