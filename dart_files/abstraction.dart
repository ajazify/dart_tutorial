//! Abstract Class and Method

void main() {
  SubBankOne subBankOne = SubBankOne();
  print('Sub Bank One has Balance of ${subBankOne.bankBalanceCheck()}, '
      'and ${subBankOne.getCustomersDetails()},'
      'also ${subBankOne.regularSecurityCheckUp()}');
  SubBankTwo subBankTwo = SubBankTwo();
  print('Sub Bank Two   has Balance of ${subBankTwo.bankBalanceCheck()},'
      ' and ${subBankTwo.getCustomersDetails()},'
      ' also ${subBankTwo.regularSecurityCheckUp()}');
}

abstract class SuperBank {
  String getCustomersDetails();
  String regularSecurityCheckUp();
  String bankBalanceCheck();
}

class SubBankOne extends SuperBank {
  @override
  String bankBalanceCheck() {
    return '2 CR';
  }

  @override
  String getCustomersDetails() {
    return '300 Customers Found!';
  }

  @override
  String regularSecurityCheckUp() {
    return 'All System Secured';
  }
}

class SubBankTwo extends SuperBank {
  @override
  String bankBalanceCheck() {
    return '4 CR';
  }

  @override
  String getCustomersDetails() {
    return '4000 Customers Found!';
  }

  @override
  String regularSecurityCheckUp() {
    return 'All System Secured';
  }
}
