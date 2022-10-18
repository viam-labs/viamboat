import 'package:injectable/injectable.dart';
import 'package:viam_marine/example/data/example_feature/data_source/example_feature_api_data_source.dart';
import 'package:viam_marine/example/data/example_feature/mapper/example_model_dto_to_example_model_mapper.dart';
import 'package:viam_marine/example/domain/example_feature/model/example_model.dart';
import 'package:viam_marine/example/domain/example_feature/service/example_service.dart';

@Injectable(as: ExampleService)
class ExampleServiceImpl implements ExampleService {
  final TaskDataSource _dataSource;
  final ExampleModelDtoToExampleModelMapper _exampleModelDtoToExampleModelMapper;

  ExampleServiceImpl(
    this._dataSource,
    this._exampleModelDtoToExampleModelMapper,
  );

  @override
  Future<ExampleModel> getExampleData() async {
    final exampleModelDto = await _dataSource.getTasks();
    return _exampleModelDtoToExampleModelMapper(exampleModelDto);
  }
}
