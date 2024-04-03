import 'package:flutter/material.dart';
import 'package:myapp/core/helpers/spacing.dart';
import 'package:myapp/core/theming/colors.dart';
import 'package:myapp/core/theming/styles.dart';

class PasswordValidation extends StatelessWidget {
  const PasswordValidation({super.key, required this.hasLowerCase, required this.hasUpperCase, required this.hasSpecialCharacters, required this.hasNumber, required this.hasMinLength});

  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 1 lowercase letter', hasLowerCase),
        buildValidationRow('At least 1 uppercase letter', hasUpperCase),
        buildValidationRow('At least 1 symbol', hasSpecialCharacters),
        buildValidationRow('At least 1 number', hasNumber),
        buildValidationRow('At least 8 characters long', hasMinLength,),
      ],
    );
  }
  
  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(radius: 2.5,backgroundColor: AppColors.grey,),
        horizontalSpacing(6),
        Text(
          text,
          style: TextStyles.font13DarkBlueRegular.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: AppColors.grey,
            decorationThickness: 2,
            color: hasValidated ? AppColors.grey : AppColors.darkBlue,
          ),
          ),

      ],
    );
  }
}