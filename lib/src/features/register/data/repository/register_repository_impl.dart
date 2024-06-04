import 'package:portfolio/src/features/register/index.dart';

class RegisterRepositoryImpl extends RegisterRepository {
  final RegisterRemoteDataSource registerRemoteDataSource;
  RegisterRepositoryImpl(this.registerRemoteDataSource);
}
