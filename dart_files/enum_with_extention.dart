enum Beverage {
  Coffee,
  Tea,
  Juice,
  Water;
}

extension BeverageDescription on Beverage {
  String get description {
    switch (this) {
      case Beverage.Coffee:
        return 'A hot drink made from roasted coffee beans';
      case Beverage.Tea:
        return 'A hot or cold drink made by steeping cured or fresh tea leaves';
      case Beverage.Juice:
        return 'A drink made from the extraction or pressing of fresh fruit';
      case Beverage.Water:
        return 'A clear, essential liquid for life';
    }
  }
}

void main() {
  Beverage myBeverage = Beverage.Tea;

  // Print the description of the selected beverage
  print(myBeverage.description);

  // Loop through all beverages and print their descriptions
  for (Beverage beverage in Beverage.values) {
    print('${beverage.name}: ${beverage.description}');
  }
}


/* 

1) Enum Definition:
The Beverage enum defines four types of beverages: Coffee, Tea, Juice, and Water.

2) Extension Definition:
-The BeverageDescription extension adds a description getter to the Beverage enum.
-The description getter returns a string describing each beverage.

3) Usage:
-In the main function, we create an instance of the Beverage enum (myBeverage).
-We print the description of myBeverage.
-We loop through all values of the Beverage enum and print their names and descriptions.

This simple example demonstrates how to define an enum and extend it with additional functionality using the 
extension keyword in Dart.

*/