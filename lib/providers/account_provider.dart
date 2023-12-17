import 'package:flutter/foundation.dart';
import 'package:sistema_bancario/models/account.dart';

class AccountProvider with ChangeNotifier {
  final Account _account = Account(
      accountNumber: "912-438383-51",
      accountHolder: "Eliecer Ureche",
      balance: 5000000);

  Account get account => _account;

  void getAccount() {
    account;
    notifyListeners();
  }

  void increaseBalance(double amount) {
    _account.balance += amount;
    notifyListeners();
  }

  void decreaseBalance(double amount) {
    _account.balance -= amount;
    notifyListeners();
  }
}
