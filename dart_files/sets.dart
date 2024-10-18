void main() {
  //!String
  Set<String> myString = {'orange', 'Apple', 'Peach'};

  //!Int
  Set<int> myAge = {14, 20, 40, 50, 60, 100};

  //!Bool
  Set<bool> myBool = {true, false};

  //!Dynamic
  Set<dynamic> myDynamic = {14, 'Apple', false};

  print(myString);
  print('Is Empty ${myString.isEmpty}');
  print(myString.runtimeType);
  print(myString.length);
  print(myString.first);

  print('add: ${myString.add('value')}');
  print(myString.last);
  print('any: ${myString.any((e) => e == 'orange')}');
  print(myString.remove('value'));
  print(myAge.where((e) => e < 100));
  print('Contains all: ${myAge.containsAll({'orange', 'Apple'})}');
  print('Every: ${myAge.every(
    (e) => e == 'orange',
  )}');
}
