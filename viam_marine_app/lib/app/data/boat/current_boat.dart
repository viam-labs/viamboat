import 'package:injectable/injectable.dart';

CurrentBoat currentBoat = CurrentBoat('', '');

class CurrentBoat {
  String url;
  String payload;

  CurrentBoat(this.url, this.payload);
}

@injectable
class CurrentBoatService {
  String getUrl() => currentBoat.url;
  String getPayload() => currentBoat.payload;
  void setCurrentBoat(String newUrl, String newPayload) => currentBoat = CurrentBoat(newUrl, newPayload);
}
