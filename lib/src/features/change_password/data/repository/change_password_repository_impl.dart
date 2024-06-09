import 'package:portfolio/src/features/change_password/domain/repository/change_password_repository.dart';

import '../datasources/change_password_remote_datasource.dart';

class ChangePasswordRepositoryImpl extends ChangePasswordRepository {
  final ChangePasswordRemoteDataSource changePasswordRemoteDataSource;
  ChangePasswordRepositoryImpl(this.changePasswordRemoteDataSource);
}
