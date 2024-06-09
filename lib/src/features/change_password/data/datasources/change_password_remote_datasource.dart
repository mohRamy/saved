import '../../../../core/services/api_service.dart';

abstract class ChangePasswordRemoteDataSource {}

class ChangePasswordRemoteDataSourceImpl extends ChangePasswordRemoteDataSource {
    final ApiService apiService;
  ChangePasswordRemoteDataSourceImpl(this.apiService);
}
