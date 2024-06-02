import 'dart:async';
import 'dart:convert' as convert;

import 'package:dio/dio.dart';

import '../../config/application.dart';
import '../errors/exception.dart';
import '../helpers/api_helper/get_exception_from_status_code.dart';
import '../helpers/api_helper/network_info.dart';

class ApiService {
  final NetworkInfo networkInfo;
  ApiService(this.networkInfo);
  
  var dio = Dio(BaseOptions(
    baseUrl: Application.baseUrl,
    connectTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
  ));

  Future<Response<dynamic>> downloadFile(
      String url, String path, Function onReceive) async {
    try {
      if (!(await networkInfo.isConnected)) {
        throw OfflineException();
      }
      var response = await dio.download(
        url,
        path,
        options: getOptions(),
        onReceiveProgress: (received, total) {
          onReceive(received, total);
        },
      );
      getExceptionStatusCode(response);
      return Future.value(response);
    } catch (e) {
      rethrow;
    }
  }

  Future<Response<dynamic>> sendFormData(
    String gateway,
    FormData formData, {
    Function? callBack,
  }) async {
    try {
      if (!(await networkInfo.isConnected)) {
        throw OfflineException();
      }
      var response = await dio.post(
        gateway,
        data: formData,
        options: getOptions(),
        onSendProgress: (send, total) {
          if (callBack != null) {
            callBack(send, total);
          }
        },
      );
      getExceptionStatusCode(response);
      return Future.value(response);
    } catch (e) {
      rethrow;
    }
  }

  Future<Response<dynamic>> postRoute(String gateway, Map<String, dynamic> body,
      {String? query, String? token}) async {
    try {
      if (!(await networkInfo.isConnected)) {
        throw OfflineException();
      }
      printEndpoint('POST', gateway);
      Map<String, String> paramsObject = {};
      if (query != null) {
        query.split('&').forEach((element) {
          paramsObject[element.split('=')[0].toString()] =
              element.split('=')[1].toString();
        });
      }
      var response = await dio.post(
        gateway,
        data: convert.jsonEncode(body),
        options: getOptions(token: token),
        queryParameters: query == null ? null : paramsObject,
      );
      printResponse(response);
      getExceptionStatusCode(response);
      return Future.value(response);
    } catch (e) {
      rethrow;
    }
  }

  Future<Response<dynamic>> putRoute(String gateway, Map<String, dynamic> body,
      {String? token}) async {
    try {
      if (!(await networkInfo.isConnected)) {
        throw OfflineException();
      }
      printEndpoint('PUT', gateway);
      var response = await dio.put(
        gateway,
        data: convert.jsonEncode(body),
        options: getOptions(token: token),
      );
      getExceptionStatusCode(response);
      return Future.value(response);
    } catch (e) {
      rethrow;
    }
  }

  Future<Response<dynamic>> patchRoute(
    String gateway, {
    String? query,
    Map<String, dynamic>? body,
    String? token,
  }) async {
    try {
      if (!(await networkInfo.isConnected)) {
        throw OfflineException();
      }
      printEndpoint('PATCH', gateway);
      Map<String, String> paramsObject = {};
      if (query != null) {
        query.split('&').forEach((element) {
          paramsObject[element.split('=')[0].toString()] =
              element.split('=')[1].toString();
        });
      }

      var response = await dio.patch(
        gateway,
        data: convert.jsonEncode(body),
        options: getOptions(token: token),
        queryParameters: query == null ? null : paramsObject,
      );
      getExceptionStatusCode(response);
      return Future.value(response);
    } catch (e) {
      rethrow;
    }
  }

  Future<Response<dynamic>> getRoute(
    String gateway, {
    String? params,
    String? query,
    String? token,
  }) async {
    try {
      if (!(await networkInfo.isConnected)) {
        throw OfflineException();
      }
      printEndpoint('GET', gateway);
      Map<String, String> paramsObject = {};
      if (query != null) {
        query.split('&').forEach((element) {
          paramsObject[element.split('=')[0].toString()] =
              element.split('=')[1].toString();
        });
      }

      var response = await dio.get(
        gateway + (params ?? ''),
        options: getOptions(token: token),
        queryParameters: query == null ? null : paramsObject,
      );
      getExceptionStatusCode(response);
      return Future.value(response);
    } catch (e) {
      rethrow;
    }
  }

  Future<Response<dynamic>> deleteRoute(
    String gateway, {
    String? params,
    String? query,
    Map<String, dynamic>? body,
    String? token,
  }) async {
    try {
      if (!(await networkInfo.isConnected)) {
        throw OfflineException();
      }
      printEndpoint('DELETE', gateway);
      Map<String, String> paramsObject = {};
      if (query != null) {
        query.split('&').forEach((element) {
          paramsObject[element.split('=')[0].toString()] =
              element.split('=')[1].toString();
        });
      }

      var response = await dio.delete(
        gateway + (params ?? ''),
        options: getOptions(token: token),
        queryParameters: query == null ? null : paramsObject,
        data: body == null ? null : convert.jsonEncode(body),
      );
      getExceptionStatusCode(response);
      return Future.value(response);
    } catch (e) {
      rethrow;
    }
  }

  Options getOptions({String? token}) {
    return Options(
      validateStatus: (status) => true,
      headers: getHeaders(token: token),
    );
  }

  getHeaders({String? token}) {
    return {
      // 'Authorization': token ?? UserLocal().getAccessToken(),
      'Content-Type': 'application/json; charset=UTF-8',
      'Connection': 'keep-alive',
      'Accept': '*/*',
      'Accept-Encoding': 'gzip, deflate, br',
    };
  }

  printEndpoint(String method, String endpoint) {
    print('${method.toUpperCase()}: ${Application.baseUrl}$endpoint');
  }

  printResponse(Response<dynamic> response) {
    print('StatusCode: ${response.statusCode}');
    // print('Body: ${response.data.toString()}');
  }
}
