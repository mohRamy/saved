import '../../../../core/services/api_service.dart';

abstract class PersonalInfoRemoteDataSource {}

class PersonalInfoRemoteDataSourceImpl extends PersonalInfoRemoteDataSource {
    final ApiService apiService;
  PersonalInfoRemoteDataSourceImpl(this.apiService);
}
