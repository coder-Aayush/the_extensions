import 'package:test/test.dart';
import 'package:the_extensions/the_extensions.dart';

import 'mock_constant.dart';

void main() {
  group('List Extension', () {
    test('Reverse List', () {
      final reversedList = list.reverse();
      expect(reversedList, [3, 2, 1]);
    });

    test('Chunk List', () {
      final chunkedList = list.chunk(2);
      expect(chunkedList, [
        [1, 2],
        [3]
      ]);
    });

    test('Filter List', () {
      final filteredList = list.filter((item) => item % 2 == 0);
      expect(filteredList, [2]);
    });

    test('Take List', () {
      final takeList = list.take(2);
      expect(takeList, [1, 2]);
    });

    test('Remove List', () {
      final removeList = list.removeItem(2);
      expect(removeList, [1, 3]);
    });

    test('Count List', () {
      final countList = list.count(2);
      expect(countList, 1);
    });

    test('Distinct List', () {
      final distinctList = list.distinct();
      expect(distinctList, [1, 2, 3]);
    });

    test('Update List', () {
      final updateList = list.update(2, 4);
      expect(updateList, [1, 2, 4]);
    });

    test('Group by List', () {
      final groupByList = list.groupBy((item) => item % 2 == 0);
      expect(groupByList, {
        true: [2],
        false: [1, 3]
      });
    });

    test('Swap List', () {
      final swapList = list.swap(1, 2);
      expect(swapList, [1, 3, 2]);
    });
  });
}
