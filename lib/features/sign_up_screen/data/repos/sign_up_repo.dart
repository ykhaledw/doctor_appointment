import 'package:myapp/core/networking/api_error_handler.dart';
import 'package:myapp/core/networking/api_result.dart';
import 'package:myapp/core/networking/api_service.dart';
import 'package:myapp/features/sign_up_screen/data/models/sign_up_request_body.dart';
import 'package:myapp/features/sign_up_screen/data/models/sign_up_response.dart';

class SignUpRepo {
  final ApiService apiService;

  SignUpRepo(this.apiService);

  Future<ApiResult<SignUpResponse>> signUp(SignUpRequestBody signUpRequestBody) async {
    try {
      final response = await apiService.signup(signUpRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}