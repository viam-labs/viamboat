import 'package:viam_marine/utils/viam_constants.dart';

String? formatFuelConsumptionName(String? fuelName) {
  if (fuelName == null) {
    return null;
  }

  final int lastColonPosition = fuelName.lastIndexOf(':');

  if (lastColonPosition != -1) {
    return fuelName.substring(lastColonPosition + 1).replaceAll(ViamConstants.fluidPrefix, '');
  } else {
    return fuelName.replaceAll(ViamConstants.fluidPrefix, '');
  }
}
