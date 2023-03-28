import 'package:injectable/injectable.dart';

const Environment staging = Environment(StagingEnvironment.staging);

class StagingEnvironment extends Environment {
  static const staging = 'staging';

  const StagingEnvironment(String name) : super(name);
}
