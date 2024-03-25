import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/features/onboarding_screen/ui/widgets/doc_image_and_text.dart';
import 'package:myapp/features/onboarding_screen/ui/widgets/doc_logo_and_name.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const DocLogoAndName(),
              SizedBox(height: 30.h,),
              const DocImageAndText(),
            ],
          ),
        ),
      ),
    );
  }
}