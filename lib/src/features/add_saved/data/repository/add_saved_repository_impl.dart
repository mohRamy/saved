import 'package:portfolio/src/features/add_saved/data/datasources/add_saved_remote_datasource.dart';
import 'package:portfolio/src/features/add_saved/domain/repository/add_saved_repository.dart';

class AddSavedRepositoryImpl extends AddSavedRepository {
  final AddSavedRemoteDataSource addSavedRemoteDataSource;
  AddSavedRepositoryImpl(this.addSavedRemoteDataSource);
}
