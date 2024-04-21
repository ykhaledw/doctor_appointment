import 'package:flutter/material.dart';
import 'package:myapp/core/di/dependency_injection.dart';
import 'package:myapp/core/routing/app_router.dart';
import 'package:myapp/doctor_app.dart';

void main() {
  setupGetIt();
  runApp(DoctorApp(
    appRouter: AppRouter(),
  ));
}