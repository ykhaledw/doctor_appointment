import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/core/helpers/spacing.dart';
import 'package:myapp/core/shared_widgets/app_text_form_field.dart';
import 'package:myapp/core/theming/styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final loginFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome Back', style: TextStyles.font24BlueBold,),
              verticalSpacing(8),
              Text('We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',style: TextStyles.font14GrayRegular,),
              verticalSpacing(36),
              Form(
                key: loginFormKey,
                child: 
               Column(
                children: [
                  const AppTextFormField(hintText: 'Email',),
                  verticalSpacing(16),
                  const AppTextFormField(hintText: 'Password'),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}