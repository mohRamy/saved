import '../../../../core/services/api_service.dart';

abstract class RegisterRemoteDataSource {}

class RegisterRemoteDataSourceImpl extends RegisterRemoteDataSource {
    final ApiService apiService;
  RegisterRemoteDataSourceImpl(this.apiService);
}
