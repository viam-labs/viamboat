import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/app_viam/usecase/get_locations_use_case.dart';
import 'package:viam_marine/app/presentation/page/organizations/widgets/location/cubit/location_state.dart';

@injectable
class LocationCubit extends Cubit<LocationState> {
  final GetLocationsUseCase _getLocationsUseCase;

  LocationCubit(this._getLocationsUseCase) : super(const LocationState.loading());

  Future<void> init(String? id) async {
    final locations = await _getLocationsUseCase(id);

    emit(LocationState.loaded(locations));
  }
}
