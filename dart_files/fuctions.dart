void main() {
  hacked();
  bike('Royal Enfield');
  car(name: 'BMW');
  var gamerVariable = gamer(name: 'MJ');
  var personVariable = person();

  print(personVariable);
  print(gamerVariable);
}

//! No Return Type and No Arguments
void hacked() {
  print('Your system has been hacked!');
}

//! No Return Type and with Arguments (named parameter)
void car({required String name}) {
  print(name);
}

//! No Return Type and with Arguments (positioned parameter)
void bike(String name) {
  print(name);
}

//! with Return Type and no Arguments
String person() {
  return 'This method is returning this message';
}

//! with Return Type and with Arguments
String gamer({required String name}) {
  return 'The Gamer name is $name';
}
