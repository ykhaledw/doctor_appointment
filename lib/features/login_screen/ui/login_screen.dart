import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/core/helpers/spacing.dart';
import 'package:myapp/core/shared_widgets/app_button.dart';
import 'package:myapp/core/shared_widgets/app_text_form_field.dart';
import 'package:myapp/core/theming/styles.dart';
import 'package:myapp/features/login_screen/ui/widgets/dont_have_an_account_text.dart';
import 'package:myapp/features/login_screen/ui/widgets/terms_and_conditions_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final loginFormKey = GlobalKey<FormState>();
  bool isObscureText = true;
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
                  AppTextFormField(
                    hintText: 'Password', 
                    isObscureText: isObscureText,
                    suffixIcon: GestureDetector(
                      onTap: (){
                        setState(() {
                          isObscureText = !isObscureText;
                        });
                      },
                      child: Icon(isObscureText ? Icons.visibility_off : Icons.visibility)),
                    ),
                  verticalSpacing(16),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text('Forgot Password ?', style: TextStyles.font13BlueRegular,),
                    ),
                    verticalSpacing(40),
                    AppButton(
                      onPressed: (){}, 
                      buttonText: 'Login', 
                      textStyle: TextStyles.font16WhiteSemiBold,
                      ),
                      verticalSpacing(16),
                      const TermsAndConditonsText(),
                      verticalSpacing(24),
                      const DontHaveAnAccountText(),
                ],
              ),),
            ],
          ),
        ),
      ),
    );
  }
}