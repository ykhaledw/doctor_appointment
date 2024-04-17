import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myapp/core/helpers/extension.dart';
import 'package:myapp/core/routing/routes.dart';
import 'package:myapp/core/theming/styles.dart';

class AlreadyHaveAnAccountText extends StatelessWidget {
  const AlreadyHaveAnAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account yet? ',
            style: TextStyles.font13DarkBlueRegular,
            ),
            TextSpan(
              text: 'Login',
              style: TextStyles.font13BlueRegular,
              recognizer: TapGestureRecognizer()..onTap =() {
                context.pushReplacementNamed(Routes.loginScreen);
              },
            ),
        ]
      ),
    );
  }
}