import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/injectable/injectable.config.dart';
import 'package:viam_marine/main.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies(String environment) => getIt.init(environment: environment);

Future<void> pushNewSessionScope() async {
  getIt.pushNewScope();
  await configureDependencies(getEnvironment());
}
