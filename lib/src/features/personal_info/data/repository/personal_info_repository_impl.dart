import 'package:portfolio/src/features/personal_info/data/datasources/personal_info_remote_datasource.dart';
import 'package:portfolio/src/features/personal_info/domain/repository/personal_info_repository.dart';

class PersonalInfoRepositoryImpl extends PersonalInfoRepository {
  final PersonalInfoRemoteDataSource personalInfoRemoteDataSource;
  PersonalInfoRepositoryImpl(this.personalInfoRemoteDataSource);
}
