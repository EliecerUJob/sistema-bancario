import 'package:flutter/foundation.dart';
import 'package:sistema_bancario/models/account.dart';

class AccountProvider with ChangeNotifier {
  final AccountModel _account = AccountModel(
      accountNumber: "912-438383-51",
      accountHolder: "Eliecer Ureche",
      balance: 5000000);

  AccountModel get account => _account;

  void getAccount() {
    account;
    notifyListeners();
  }

  void increaseBalance(int amount) {
    _account.balance = _account.balance! - amount;
    notifyListeners();
  }

  void decreaseBalance(int amount) {
    _account.balance = _account.balance! + amount;
    notifyListeners();
  }
}
