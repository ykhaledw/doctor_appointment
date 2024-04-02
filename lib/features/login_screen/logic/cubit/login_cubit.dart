import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/features/login_screen/data/models/login_request_body.dart';
import 'package:myapp/features/login_screen/data/repos/login_repo.dart';
import 'package:myapp/features/login_screen/logic/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;
  LoginCubit(this.loginRepo) : super(const LoginState.initial());


  void emitLoadingState(LoginRequestBody loginRequestBody) async{
    emit(const LoginState.loading());
    final response = await loginRepo.login(loginRequestBody);
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
