import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/injectable/dio_injectable/dio_injectable.dart';
import 'package:viam_marine/injectable/injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureDependencies(String environment) {
  $initGetIt(getIt, environment: environment);
  if (environment == Environment.dev) registerAlice();
}
