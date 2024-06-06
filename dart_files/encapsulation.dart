//! Encapsulation ###############

void main() {
  BankAccount bankAccount = BankAccount();
  bankAccount.setIfsc(ifsc: 'YES000000122');
  bankAccount.setAccountNumber(accountNumber: '0000 4141 1190');

  print(bankAccount.getAccountNumber());
  print(bankAccount.getIfsc());
}

//^Advanced - no need to call get or set just call by the name
// void main() {
//   BankAccount bankAccount = BankAccount();
//   bankAccount.accountNumber = 'asdasd';
//   bankAccount.ifsc = 'asdasda';

//   print(bankAccount.accountNumber);
//   print(bankAccount.ifsc);
// }

class BankAccount {
  late final String _accountNumber;
  late final String _ifsc;

  String getAccountNumber() {
    return this._accountNumber;
  }

  String getIfsc() {
    return this._ifsc;
  }

  void setAccountNumber({required String accountNumber}) {
    this._accountNumber = accountNumber;
  }

  void setIfsc({required String ifsc}) {
    this._ifsc = ifsc;
  }
}

//^ Advanced way
// class BankAccount {
//   late String _accountNumber;
//   late String _ifsc;

//   String get accountNumber => _accountNumber;
//   String get ifsc => _ifsc;

//   set accountNumber(String accNo) {
//     _accountNumber = accNo;
//   }

//   set ifsc(String ifsc) {
//     _ifsc = ifsc;
//   }
// }
