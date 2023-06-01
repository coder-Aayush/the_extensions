import 'package:the_extensions/the_extensions.dart';

void main() {
  final list = [1, 2, 3];
  final reversedList = list.reverse();
  print(reversedList); // [3, 2, 1]

  // chunks
  final chunkedList = list.chunk(2);
  print(chunkedList); // [[1, 2], [3]]

  // filter
  final filteredList = list.filter((item) => item % 2 == 0);
  print(filteredList); // [2]

  // take
  final takeList = list.take(2);
  print(takeList); // [1, 2]

  // update
  final updateList = list.update(1, 1);
  print(updateList); // [1, 2, 2]
}
