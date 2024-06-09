import '../../../../core/services/api_service.dart';

abstract class LanguageRemoteDataSource {}

class LanguageRemoteDataSourceImpl extends LanguageRemoteDataSource {
    final ApiService apiService;
  LanguageRemoteDataSourceImpl(this.apiService);
}
