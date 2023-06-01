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

  // groupby
  final persons = [
    Person('John', 18),
    Person('Jane', 20),
    Person('John', 20),
  ];
  final groupByList = persons.groupBy((item) => item.age);
  print(groupByList); // {18: [Person(name: John, age: 18)], 20: [Person(name: Jane, age: 20), Person(name: John, age: 20)]}

  final message = [
    Message('Hello', 'John', 'Jane', DateTime.now().subtract(Duration(days: 1))),
    Message('Hi', 'Jane', 'John', DateTime.now()..subtract(Duration(days: 2))),
    Message('How are you?', 'John', 'Jane', DateTime.now()),
    Message('I am fine', 'Jane', 'John', DateTime.now()),
  ];

  // groupby
  final groupByList2 = message.groupBy((item) => item.sender);
  print(groupByList2);

  // group by timestamp
  final groupByList3 = message.groupBy((item) => item.createdAt);
  print(groupByList3);

  // swap message
  final swapMessage = message.swap(message.first, message.last);
  print(swapMessage);

  // get random
  final randomMessage = message.random();
  print(randomMessage);
}

class Message {
  final String content;
  final String sender;
  final String receiver;
  final DateTime createdAt;
  Message(this.content, this.sender, this.receiver, this.createdAt);
  @override
  String toString() => 'Message(content: $content, sender: $sender, receiver: $receiver, createdAt: $createdAt)';
}

class Person {
  final String name;
  final int age;
  Person(this.name, this.age);
  @override
  String toString() => 'Person(name: $name, age: $age)';
}
