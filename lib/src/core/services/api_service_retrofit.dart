// import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import '../constants/app_api_gateway.dart';

// part 'api_service_retrofit.g.dart';

@RestApi(baseUrl: AppApiGateway.baseUrl)
abstract class ApiServiceRetrofit {
  // factory ApiServiceRetrofit(Dio dio, {String baseUrl}) = _ApiServiceRetrofit;

  // @POST(AppApiGateway.addPost)
  // Future<AddPostResponseModel> addPost(
  //   @Header("Authorization") String authorizationHeader,
  //   @Body() Map<String, dynamic> addPostRequestBody,
  // );

}