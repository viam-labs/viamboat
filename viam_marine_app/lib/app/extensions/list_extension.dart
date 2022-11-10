import 'package:collection/collection.dart';

extension InsertBetweenElements<T> on List<T> {
  List<T> insertBetweenElements(T Function() elementFactory) {
    if (length < 2) {
      return this;
    }

    List<T> newList = map((e) => [e, elementFactory()]).expand((e) => e).toList();
    newList.removeLast();

    return newList;
  }
}

extension ContainsDate on List<DateTime> {
  bool containsDate(DateTime element) =>
      firstWhereOrNull(
        (date) => date.year == element.year && date.month == element.month && date.day == element.day,
      ) !=
      null;
}

extension Unique<E, Id> on List<E> {
  List<E> unique([Id Function(E element)? id, bool inplace = true]) {
    final ids = <dynamic>{};
    var list = inplace ? this : List<E>.from(this);
    list.retainWhere((x) => ids.add(id != null ? id(x) : x as Id));
    return list;
  }
}
