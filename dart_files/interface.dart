//! Interface 

void main() {
  SubBankOne subBankOne = SubBankOne();
  print(
      'Sub Bank One has Balance of ${subBankOne.bankBalanceCheck()}, and ${subBankOne.getCustomersDetails()},also ${subBankOne.regularSecurityCheckUp()}');

      SubBankTwo subBankTwo = SubBankTwo();
  print(
      'Sub Bank Two   has Balance of ${subBankTwo.bankBalanceCheck()}, and ${subBankTwo.getCustomersDetails()},also ${subBankTwo.regularSecurityCheckUp()}');
}

class SuperBank {
  String getCustomersDetails() {
    return '_';
  }

  String regularSecurityCheckUp() {
    return '_';
  }

  String bankBalanceCheck() {
    return '_';
  }
}

class SubBankOne implements SuperBank {
  @override
  String bankBalanceCheck() {
    return '300 CR';
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

class SubBankTwo implements SuperBank {
  @override
  String bankBalanceCheck() {
    return '4000 CR';
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
