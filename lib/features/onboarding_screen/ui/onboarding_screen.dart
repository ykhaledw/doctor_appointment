import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/core/theming/styles.dart';
import 'package:myapp/features/onboarding_screen/ui/widgets/doc_image_and_text.dart';
import 'package:myapp/features/onboarding_screen/ui/widgets/doc_logo_and_name.dart';
import 'package:myapp/features/onboarding_screen/ui/widgets/get_started_button.dart';

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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  children: [
                    const Text('Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.', 
                    textAlign: TextAlign.center,
                    style: TextStyles.font13GreyRegular,),
                    SizedBox(height: 30.h,),
                    const GetStartedButton(),
                  ],
                ),
                ),
              
            ],
          ),
        ),
      ),
    );
  }
}