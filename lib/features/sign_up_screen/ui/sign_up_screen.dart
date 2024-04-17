import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/core/helpers/spacing.dart';
import 'package:myapp/core/shared_widgets/app_button.dart';
import 'package:myapp/core/theming/styles.dart';
import 'package:myapp/features/login_screen/ui/widgets/terms_and_conditions_text.dart';
import 'package:myapp/features/sign_up_screen/logic/cubit/sign_up_cubit.dart';
import 'package:myapp/features/sign_up_screen/ui/widgets/already_have_an_account_text.dart';
import 'package:myapp/features/sign_up_screen/ui/widgets/sign_up_bloc_listener.dart';
import 'package:myapp/features/sign_up_screen/ui/widgets/sign_up_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Create Account', style: TextStyles.font24BlueBold,),
                verticalSpacing(8),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpacing(36),
                Column(
                 children: [
                  const SignUpForm(),
                  verticalSpacing(24),
                   Align(
                     alignment: AlignmentDirectional.centerEnd,
                     child: Text('Forgot Password ?', style: TextStyles.font13BlueRegular,),
                     ),
                     verticalSpacing(40),
                     AppButton(
                       onPressed: (){
                        validateThenDoSignup(context);
                       }, 
                       buttonText: 'Create Account', 
                       textStyle: TextStyles.font16WhiteSemiBold,
                       ),
                       verticalSpacing(16),
                       const TermsAndConditonsText(),
                       verticalSpacing(24),
                       const AlreadyHaveAnAccountText(),
                       const SignUpBlocListener(),
                 ],
                              ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
      context.read<SignUpCubit>().emitSignUpStates();
    }
  }
}