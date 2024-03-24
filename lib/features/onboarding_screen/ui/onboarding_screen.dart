import 'package:flutter/material.dart';
import 'package:myapp/features/onboarding_screen/ui/widgets/doc_logo_and_name.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              DocLogoAndName(),
            ],
          ),
        ),
      ),
    );
  }
}