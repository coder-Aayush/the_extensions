extension ListX<T> on List<T> {
  /// Returns a new list with the elements of this that are not null.
  List<T> whereNotNull() => whereType<T>().toList();

  /// Reverse list and return a new list
  /// ```dart
  /// final list = [1, 2, 3];
  /// final reversedList = list.reverse();
  /// ```
  List<T> reverse({bool isReverse = true}) => isReverse ? reversed.toList() : this;

  /// chunks list and return a new list
  /// ```dart
  /// final list = [1, 2, 3, 4, 5];
  /// final chunkedList = list.chunk(2);
  /// ```
  /// output: [[1, 2], [3, 4], [5]]
  List<List<T>> chunk(int size) {
    final List<List<T>> chunks = [];
    for (var i = 0; i < length; i += size) {
      chunks.add(sublist(i, i + size > length ? length : i + size));
    }
    return chunks;
  }

  /// filter list and return a new list
  /// ```dart
  /// final list = [1, 2, 3, 4, 5];
  /// final filteredList = list.filter((item) => item % 2 == 0);
  /// ```
  /// output: [2, 4]
  List<T> filter(bool Function(T) test) => where(test).toList();

  // take list and return a new list
  /// ```dart
  /// final list = [1, 2, 3, 4, 5];
  /// final takeList = list.take(2);
  /// ```
  /// output: [1, 2]
  List<T> take(int size) => sublist(0, size > length ? length : size);

  // remove list and return a new list
  /// ```dart
  /// final list = [1, 2, 3, 4, 5];
  /// final removeList = list.remove(2);
  /// ```
  /// output: [1, 3, 4, 5]
  List<T> remove(T item) => where((e) => e != item).toList();

  // count list and return a new list
  /// ```dart
  /// final list = [1, 2, 3, 4, 5];
  /// final countList = list.count(2);
  /// ```
  /// output: 1
  int count(T item) => where((e) => e == item).length;

  // distinct list and return a new list
  /// ```dart
  /// final list = [1, 2, 3, 4, 5, 1, 2, 3, 4, 5];
  /// final distinctList = list.distinct();
  /// ```
  /// output: [1, 2, 3, 4, 5]
  List<T> distinct() => toSet().toList();

  // update list and return a new list
  /// ```dart
  /// final list = [1, 2, 3, 4, 5];
  /// final updateList = list.update(1, 2);
  /// ```
  /// output: [1, 2, 2, 4, 5]
  List<T> update(int pos, T t) {
    List<T> list = [];
    list.add(t);
    replaceRange(pos, pos + 1, list);
    return this;
  }

  /// group by list and return a new list
  /// ```dart
  /// final list = [1, 2, 3, 4, 5];
  /// final groupByList = list.groupBy((item) => item % 2 == 0);
  /// ```
  /// output: {false: [1, 3, 5], true: [2, 4]}
  Map<K, List<T>> groupBy<K>(K Function(T) key) {
    final Map<K, List<T>> map = {};
    for (final item in this) {
      final k = key(item);
      if (map.containsKey(k)) {
        map[k]!.add(item);
      } else {
        map[k] = [item];
      }
    }
    return map;
  }
}
