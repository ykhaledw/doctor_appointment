import 'package:flutter/material.dart';
import 'package:myapp/core/theming/styles.dart';

class DontHaveAnAccountText extends StatelessWidget {
  const DontHaveAnAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account? ',
            style: TextStyles.font13DarkBlueRegular,
            ),
            TextSpan(
              text: 'Sign up',
              style: TextStyles.font13BlueRegular
            ),
        ]
      ),
    );
}
}