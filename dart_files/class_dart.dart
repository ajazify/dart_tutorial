void main() {
  Person person = Person(myAge: '26', myName: 'Muhammed Ajas A A');
  person.myAge('24');
  person.myName('Akhil');
  
}

class Person {
  final myName;
  final myAge;

  Person({this.myAge, this.myName});

  printer() {
    print(myAge);
    print(myName);
  }
}
