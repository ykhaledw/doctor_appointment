import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/core/helpers/app_regex.dart';
import 'package:myapp/core/helpers/spacing.dart';
import 'package:myapp/core/shared_widgets/app_text_form_field.dart';
import 'package:myapp/features/login_screen/ui/widgets/password_validation.dart';
import 'package:myapp/features/sign_up_screen/logic/cubit/sign_up_cubit.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {

  bool isPasswordObscureText = true;
  bool isPasswordConfirmationObscureText = true;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<SignUpCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() { 
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters = AppRegex.hasSpecialCharacters(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignUpCubit>().formKey,
      child: Column(
        children: [
           AppTextFormField(
            controller: context.read<SignUpCubit>().nameController,
            hintText: 'Name',
            validator: (value){
              if(value == null || value.isEmpty){
                return 'Please enter a valid name';
              }
            },
            ),
                 verticalSpacing(18),
                 AppTextFormField(
                  controller: context.read<SignUpCubit>().phoneController,
                   hintText: 'Phone number',
                     validator: (value){
                      if(value == null || value.isEmpty || !AppRegex.isPhoneNumberValid(value)){
                return 'Please enter a valid phone number';
              }
                     },
                     
                   ),
                   verticalSpacing(18),
                   AppTextFormField(
            controller: context.read<SignUpCubit>().emailController,
            hintText: 'Email',
            validator: (value){
              if(value == null || value.isEmpty || !AppRegex.isEmailValid(value)){
                return 'Please enter a valid email';
              }
            },
            ),
                 verticalSpacing(18),
                 AppTextFormField(
            controller: context.read<SignUpCubit>().passwordController,
            hintText: 'Password',
            isObscureText: isPasswordObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordObscureText = !isPasswordObscureText;
                });
              },
              child: Icon(
                isPasswordObscureText ? Icons.visibility_off : Icons.visibility,
                ),
            ),
            validator: (value){
              if(value == null || value.isEmpty){
                return 'Please enter a valid password';
              }
            },
            ),
            verticalSpacing(18),
            AppTextFormField(
            controller: context.read<SignUpCubit>().passwordConfirmationController,
            hintText: 'Password confirmation',
            isObscureText: isPasswordConfirmationObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordConfirmationObscureText = !isPasswordConfirmationObscureText;
                });
              },
              child: Icon(
                isPasswordConfirmationObscureText ? Icons.visibility_off : Icons.visibility,
                ),
            ),
            validator: (value){
              if(value == null || value.isEmpty){
                return 'Passwords don\'t match!';
              }
            },
            ),
                   verticalSpacing(24),
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

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}