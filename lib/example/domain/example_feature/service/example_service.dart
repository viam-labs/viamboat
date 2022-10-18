import 'package:viam_marine/example/domain/example_feature/model/example_model.dart';

abstract class ExampleService {
  Future<ExampleModel> getExampleData();
}
