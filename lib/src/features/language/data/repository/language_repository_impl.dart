import 'package:portfolio/src/features/language/data/datasources/language_remote_datasource.dart';
import 'package:portfolio/src/features/language/domain/repository/language_repository.dart';

class LanguageRepositoryImpl extends LanguageRepository {
  final LanguageRemoteDataSource languageRemoteDataSource;
  LanguageRepositoryImpl(this.languageRemoteDataSource);
}
