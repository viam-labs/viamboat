import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:viam_marine/domain/data_viam/model/filter_type.dart';
import 'package:viam_marine/domain/data_viam/model/water_filter.dart';

part 'filters_state.freezed.dart';

@freezed
class FiltersState with _$FiltersState {
  const factory FiltersState.idle() = FiltersStateIdle;

  const factory FiltersState.loaded(
    WaterFilter filter,
    FiltersType type,
  ) = FiltersStateLoaded;
}
