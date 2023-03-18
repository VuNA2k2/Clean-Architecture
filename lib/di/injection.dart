
import 'package:clean_architecture/data/remote/api_service.dart';
import 'package:clean_architecture/data/remote/user_remote.dart';
import 'package:clean_architecture/data/repositories/user_repository_impl.dart';
import 'package:clean_architecture/dependencies/api_service_impl.dart';
import 'package:clean_architecture/domain/repositories/user_repository.dart';
import 'package:clean_architecture/domain/use_case/user_use_case.dart';
import 'package:get_it/get_it.dart';

class ConfigDI {
  static final injector = GetIt.instance;
  static init() {
    injector.registerSingleton<ApiService>(ApiServiceImpl());
    injector.registerSingleton<UserRemote>(UserRemote(injector.get()));
    injector.registerSingleton<UserRepository>(UserRepositoryImpl(injector.get()));
    injector.registerLazySingleton<UserUseCase>(() => UserUseCase(injector.get()));
  }
}

