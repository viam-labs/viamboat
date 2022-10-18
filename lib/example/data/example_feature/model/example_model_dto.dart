import 'package:json_annotation/json_annotation.dart';

part 'example_model_dto.g.dart';

@JsonSerializable()
class ExampleModelDto {
  String id;

  ExampleModelDto(
    this.id,
  );

  factory ExampleModelDto.fromJson(Map<String, dynamic> json) => _$ExampleModelDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ExampleModelDtoToJson(this);
}
