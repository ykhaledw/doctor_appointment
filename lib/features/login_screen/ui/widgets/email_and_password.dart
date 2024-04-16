// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:myapp/core/helpers/app_regex.dart';
// import 'package:myapp/core/helpers/spacing.dart';
// import 'package:myapp/core/shared_widgets/app_text_form_field.dart';
// import 'package:myapp/features/login_screen/logic/cubit/login_cubit.dart';
// import 'package:myapp/features/login_screen/ui/widgets/password_validation.dart';

// class EmailAndPassword extends StatefulWidget {
//   const EmailAndPassword({super.key});

//   @override
//   State<EmailAndPassword> createState() => _EmailAndPasswordState();
// }

// class _EmailAndPasswordState extends State<EmailAndPassword> {

//   bool isObscureText = true;

//   bool hasLowercase = false;
//   bool hasUppercase = false;
//   bool hasSpecialCharacters = false;
//   bool hasNumber = false;
//   bool hasMinLength = false;

//   late TextEditingController passwordController;

//   @override
//   void initState() {
//     super.initState();
//     passwordController = context.read<LoginCubit>().passwordController;
//     setupPasswordControllerListener();
//   }

//   void setupPasswordControllerListener() {
//     passwordController.addListener(() { 
//       setState(() {
//         hasLowercase = AppRegex.hasLowerCase(passwordController.text);
//         hasUppercase = AppRegex.hasUpperCase(passwordController.text);
//         hasSpecialCharacters = AppRegex.hasSpecialCharacters(passwordController.text);
//         hasNumber = AppRegex.hasNumber(passwordController.text);
//         hasMinLength = AppRegex.hasMinLength(passwordController.text);
//       });
//     });
//   }

  


//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: context.read<LoginCubit>().formKey,
//       child: Column(
//         children: [
//            AppTextFormField(
//             controller: context.read<LoginCubit>().emailController,
//             hintText: 'Email',
//             validator: (value){
//               if(value == null || value.isEmpty || !AppRegex.isEmailValid(value)){
//                 return 'Please enter a valid email';
//               }
//             },
//             ),
//                  verticalSpacing(16),
//                  AppTextFormField(
//                   controller: context.read<LoginCubit>().passwordController,
//                    hintText: 'Password', 
//                    isObscureText: isObscureText,
//                    suffixIcon: GestureDetector(
//                      onTap: (){
//                        setState(() {
//                          isObscureText = !isObscureText;
//                        });
//                      },
//                      child: Icon(isObscureText ? Icons.visibility_off : Icons.visibility)),
//                      validator: (value){
//                       if(value == null || value.isEmpty){
//                 return 'Please enter your password';
//               }
//                      },
                     
//                    ),
//                    verticalSpacing(24),
//                    PasswordValidation(
//                     hasLowerCase: hasLowercase,
//                     hasUpperCase: hasUppercase,
//                     hasSpecialCharacters: hasSpecialCharacters,
//                     hasNumber: hasNumber,
//                     hasMinLength: hasMinLength,
//                    ),
//         ],
//       ),
//       );
//   }
  

//   @override
//   void dispose() {
//     passwordController.dispose();
//     super.dispose();
//   }
  
// }


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/core/helpers/app_regex.dart';
import 'package:myapp/core/shared_widgets/app_text_form_field.dart';
import 'package:myapp/features/login_screen/logic/cubit/login_cubit.dart';
import 'package:myapp/features/login_screen/ui/widgets/password_validation.dart';

import '../../../../core/helpers/spacing.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscureText = true;

  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacters(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'Email',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
            },
            controller: context.read<LoginCubit>().emailController,
          ),
          verticalSpacing(18),
          AppTextFormField(
            controller: context.read<LoginCubit>().passwordController,
            hintText: 'Password',
            isObscureText: isObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
            },
          ),
          verticalSpacing(24),
          PasswordValidation(
            hasLowerCase: hasLowerCase, 
            hasUpperCase: hasUpperCase, 
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
