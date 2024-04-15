import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/core/helpers/spacing.dart';
import 'package:myapp/core/shared_widgets/app_text_form_field.dart';
import 'package:myapp/features/login_screen/logic/cubit/login_cubit.dart';
import 'package:myapp/features/login_screen/ui/widgets/password_validation.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {

  bool isObscureText = true;
  late TextEditingController passwordController;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
  }


  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
           AppTextFormField(
            controller: context.read<LoginCubit>().emailController,
            hintText: 'Email',
            validator: (value){
              if(value == null || value.isEmpty){
                return 'Please enter your email';
              }
            },
            ),
                 verticalSpacing(16),
                 AppTextFormField(
                  controller: context.read<LoginCubit>().passwordController,
                   hintText: 'Password', 
                   isObscureText: isObscureText,
                   suffixIcon: GestureDetector(
                     onTap: (){
                       setState(() {
                         isObscureText = !isObscureText;
                       });
                     },
                     child: Icon(isObscureText ? Icons.visibility_off : Icons.visibility)),
                     validator: (value){
                      if(value == null || value.isEmpty){
                return 'Please enter your password';
              }
                     },
                     
                   ),
                   verticalSpacing(16),
                   PasswordValidation(
                    hasLowerCase: hasLowercase,
                    hasUpperCase: hasUppercase,
                    hasSpecialCharacters: hasSpecialCharacters,
                    hasNumber: hasNumber,
                    hasMinLength: hasMinLength,
                   ),
        ],
      ),
      );
  }
}