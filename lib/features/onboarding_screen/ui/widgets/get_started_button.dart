import 'package:flutter/material.dart';
import 'package:myapp/core/helpers/extension.dart';
import 'package:myapp/core/routing/routes.dart';
import 'package:myapp/core/theming/colors.dart';
import 'package:myapp/core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
        context.pushNamed(Routes.loginScreen);
      }, 
      
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.mainBlueColor),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(const Size(double.infinity, 52)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      child: const Text('Get Started', style: TextStyles.font16WhiteSemiBold,),
      );
  }
}