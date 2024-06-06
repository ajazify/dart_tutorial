//! Mixin 
void main() {
  Bank bank = Bank();
  bank.openBankAccount();
}

mixin BackProcedure {
  void bankOpeningProcess() {
    print('Fetch Sibil Score...');
    print('Checking Pervious account details...');
  }
}

mixin DigiLocker {
  void accessUserDatails() {
    print('Fetch User Details...');
    print('Give Id and document...');
  }
}

class Bank with DigiLocker, BackProcedure {
  void openBankAccount() {
    bankOpeningProcess();
    accessUserDatails();
    print('Account Opend!');
  }
}
