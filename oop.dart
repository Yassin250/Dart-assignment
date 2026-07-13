//Group Members:
// 1. Name: Munyaneza yassin   Student ID: BBICTR/2024/47538
// 2. Name: Gihozo kellia   Student ID: BBICTR/2024/44711
// 3. Name: Robert Rukundo   Student ID: BBICTR/2024/48686
// 4. Name: Niyonizera manzi kevin   Student ID: BBICTR/2024/47207
// 5. Name: Berwa Dela joie Ines   Student ID: BBICTR/2024/48199

class BankAccount {
  // Private field
  double _balance;

  // Constructor
  BankAccount(this._balance);

  // Getter
  double get balance => _balance;

  // Deposit method
  void deposit(double amount) {
    _balance += amount;
    print("Deposited: \$amount");
    print("Current Balance: \$$_balance");
  }

  // Withdraw method
  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
      print("Withdrawn: \$amount");
      print("Current Balance: \$$_balance");
    } else {
      print("Insufficient balance!");
    }
  }
}

void main() {
  print("===== Account 1 =====");

  BankAccount account1 = BankAccount(1000);

  print("Starting Balance: ${account1.balance}");

  account1.deposit(500);

  account1.withdraw(200);

  account1.withdraw(5000);

  print("");

  print("===== Account 2 =====");

  BankAccount account2 = BankAccount(2500);

  print("Starting Balance: ${account2.balance}");

  account2.deposit(1000);

  account2.withdraw(800);

  account2.withdraw(4000);
}
