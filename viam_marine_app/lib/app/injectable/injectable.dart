import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/injectable/injectable.config.dart';
import 'package:viam_marine/main.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureDependencies(String environment) {
  $initGetIt(getIt, environment: environment);
}

void pushNewSessionScope() {
  getIt.pushNewScope();
  configureDependencies(getEnvironment());
}
