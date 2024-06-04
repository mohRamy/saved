import '../../../../core/services/api_service.dart';

abstract class LoginRemoteDataSource {}

class LoginRemoteDataSourceImpl extends LoginRemoteDataSource {
    final ApiService apiService;
  LoginRemoteDataSourceImpl(this.apiService);
}
