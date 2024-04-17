import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/features/sign_up_screen/data/models/sign_up_request_body.dart';
import 'package:myapp/features/sign_up_screen/data/repos/sign_up_repo.dart';
import 'package:myapp/features/sign_up_screen/logic/cubit/sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo signUpRepo;
  SignUpCubit(this.signUpRepo) : super(const SignUpState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController = TextEditingController();
  final formKey = GlobalKey<FormState>();


  void emitSignUpStates() async{
    final response = await signUpRepo.signUp(
      SignUpRequestBody(
        name: nameController.text, 
        email: emailController.text, 
        phone: phoneController.text, 
        password: passwordController.text, 
        passwordConfirmation: passwordConfirmationController.text, 
        gender: 0,
        ),
    );
    response.when(
      success: (signUpResponse){
        emit(SignUpState.signUpsuccess(signUpResponse));
      }, 
      failure: (error){
        emit(SignUpState.signUpfailure(error: error.apiErrorModel.message ?? ''));
      },
      );
  }
}