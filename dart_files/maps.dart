void main() {
  // Creating maps
  Map<String, int> ages = {'Alice': 25, 'Bob': 30, 'Charlie': 35, 'David': 40, 'Eva': 45};

  Map<String, String> fruits = {'apple': 'red', 'banana': 'yellow', 'grape': 'purple'};

  // Printing maps
  print('Ages: $ages');
  print('Fruits: $fruits');

  // Basic Map operations
  print('Is Empty: ${ages.isEmpty}');
  print('Runtime type: ${ages.runtimeType}');
  print('Length: ${ages.length}');
  print('First key: ${ages.keys.first}');
  print('First value: ${ages.values.first}');

  // Adding to a map
  fruits['orange'] = 'orange';
  print('After adding orange: $fruits');

  // Checking for a key
  print('Contains key "banana": ${fruits.containsKey("banana")}');

  // Checking for a value
  print('Contains value "red": ${fruits.containsValue("red")}');

  // Removing from a map
  ages.remove('David');
  print('After removing David: $ages');

  // Filtering a map
  var youngPeople = Map.fromEntries(ages.entries.where((entry) => entry.value < 40));
  print('People under 40: $youngPeople');

  // Checking if every entry satisfies a condition
  print('Everyone over 20: ${ages.values.every((age) => age > 20)}');

  // Map-specific operations
  print('Keys: ${ages.keys.toList()}');
  print('Values: ${ages.values.toList()}');

  // Updating all values
  var updatedAges = ages.map((key, value) => MapEntry(key, value + 1));
  print('Ages after adding 1 year: $updatedAges');

  // Sorting a map (by converting to a list of entries, sorting, then back to a map)
  var sortedAges = Map.fromEntries(ages.entries.toList()..sort((a, b) => a.value.compareTo(b.value)));
  print('Sorted ages: $sortedAges');
}
