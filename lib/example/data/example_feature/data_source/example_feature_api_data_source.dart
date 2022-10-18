import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/example/data/example_feature/model/example_model_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'example_feature_api_data_source.g.dart';

@injectable
@RestApi()
abstract class TaskDataSource {
  @factoryMethod
  factory TaskDataSource(Dio dio) = _TaskDataSource;

  @GET("/tasks")
  Future<ExampleModelDto> getTasks();
}
