import '../../../../core/services/api_service.dart';

abstract class AddSavedRemoteDataSource {}

class AddSavedRemoteDataSourceImpl extends AddSavedRemoteDataSource {
    final ApiService apiService;
  AddSavedRemoteDataSourceImpl(this.apiService);
}
