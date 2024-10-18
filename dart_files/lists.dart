void main() {
  List<String> names = ['Alice', 'Bob', 'Charlie', 'David', 'Eva', 'Frank', 'Grace', 'Henry', 'Ivy', 'Jack'];

/* 
This creates a list of 10 string elements. 
You can modify the names as needed for your specific use case.

Alternatively, if you want to create a list of 10 elements with some default value, 
you can use the List.filled constructor:
*/
  List<String> namesFilled = List.filled(10, 'Unknown');

// /If you need a growable list with an initial size of 10, you can use:

  List<String> namesGenerate = List.generate(10, (index) => 'Name $index');

  print(names);
  print(namesFilled);
  print(namesGenerate);

  List<String> myString = ['orange', 'Apple', 'Peach'];
  List<int> myAge = [14, 20, 40, 50, 60, 100];

  print(myString);
  print('Is Empty: ${myString.isEmpty}');
  print(myString.runtimeType);
  print(myString.length);
  print(myString.first);

  myString.addAll(['asdasd', 'asdasdasd']);
  print(myString.last);
  print('Any: ${myString.any((e) => e == 'orange')}');
  print(myString.remove('value'));
  print(myAge.where((e) => e < 100).toList());
  print('Every: ${myAge.every((e) => e == 'orange')}');

  // Additional List-specific operations
  print('Index of Apple: ${myString.indexOf('Apple')}');
  print('Sublist: ${myString.sublist(0, 2)}');
  myString.sort();
  print('Sorted: $myString');
}
