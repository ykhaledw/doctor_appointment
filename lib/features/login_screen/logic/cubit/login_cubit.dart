import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/features/login_screen/data/models/login_request_body.dart';
import 'package:myapp/features/login_screen/data/repos/login_repo.dart';
import 'package:myapp/features/login_screen/logic/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;
  LoginCubit(this.loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();


  void emitLoadingState() async{
    emit(const LoginState.loading());
    final response = await loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
      );
    response.when(
      success: (loginResponse){
        emit(LoginState.success(loginResponse));
      }, 
      failure: (error){
        emit(LoginState.failure(error: error.apiErrorModel.message ?? ''));
      },
      );
  }
}
