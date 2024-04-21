import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/core/di/dependency_injection.dart';
import 'package:myapp/core/routing/app_router.dart';
import 'package:myapp/doctor_app.dart';

void main() async{
  setupGetIt();
  
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  runApp(DoctorApp(
    appRouter: AppRouter(),
  ));
}