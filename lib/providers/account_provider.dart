import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:sistema_bancario/locator.dart';
import 'package:sistema_bancario/models/account.dart';
import 'package:sistema_bancario/services/account_service.dart';

class AccountProvider with ChangeNotifier {
  final _service = locator<AccountService>();

  AccountModel _account = AccountModel();
  AccountModel get account => _account;

  Stream<QuerySnapshot> fethAccountAsStream() {
    return _service.streamDataCollection();
  }

  Future<AccountModel> getAccountById(String id) async {
    var response = await _service.getDocumentById(id);

    _account = AccountModel(
        accountHolder: response.get("accountHolder"),
        accountNumber: response.get("accountNumber"),
        balance: response.get("balance"));

    notifyListeners();

    return _account;
  }

  void increaseBalance(int amount, String id) async {
    _account.balance = _account.balance! + amount;
    await _service.updateDocument(account.toJson(), id);
    notifyListeners();
  }

  void decreaseBalance(int amount, String id) async {
    _account.balance = _account.balance! - amount;
    await _service.updateDocument(account.toJson(), id);
    notifyListeners();
  }
}
