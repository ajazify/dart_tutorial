//! Inheritance ###############
void main() {
  SubBank subBank = SubBank();
  print(subBank.getUserDetails());
  print(subBank.accountNumber);
}

class SuperBank {
  String accountNumber = '0000 4141 9090';
  String getUserDetails() {
    return 'MJ';
  }
}

class SubBank extends SuperBank {
  @override
  String getUserDetails() {
    print('Called through Sub Class');
    return super.getUserDetails();
  }
}
