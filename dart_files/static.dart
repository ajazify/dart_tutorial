//! Static Variable and Method

void main() {
  print(Bank.bankName);
  Bank.printer();
}

class Bank {
  //! variable
  static String bankName = 'SBI';

  //! method
  static void printer() {
    print('bank name is SBI');
  }
}
