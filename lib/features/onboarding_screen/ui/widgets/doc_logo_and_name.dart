import 'package:flutter/material.dart';
import 'package:myapp/core/theming/styles.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('HiDoc', style: TextStyles.font24BlackBold),
      ],
    );
  }
}