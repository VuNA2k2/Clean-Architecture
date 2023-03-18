
import 'package:clean_architecture/di/injection.dart';
import 'package:clean_architecture/domain/use_case/user_use_case.dart';

void main() {
  ConfigDI.init();
  // presentation layer
  UserUseCase useCase = ConfigDI.injector.get();
  print(useCase.getUserById('id'));
}