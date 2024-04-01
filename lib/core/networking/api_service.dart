import 'package:dio/dio.dart';
import 'package:myapp/core/networking/api_constants.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService{
  factory ApiService(Dio dio,{String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<dynamic> login(
    @Body() Map<String,dynamic> body
    );
}