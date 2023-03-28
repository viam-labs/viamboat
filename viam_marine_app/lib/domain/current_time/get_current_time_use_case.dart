import 'package:injectable/injectable.dart';

@injectable
class GetCurrentTimeUseCase {
  DateTime call() => DateTime.now();
}
