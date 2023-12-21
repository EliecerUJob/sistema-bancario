import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:sistema_bancario/locator.dart';
import 'package:sistema_bancario/models/transaction.dart';
import 'package:sistema_bancario/services/transaction_service.dart';

class TransactionProvider with ChangeNotifier {
  final _service = locator<TransactionService>();

  List<TransactionModel> _items = [];

  bool isLoading = false;

  List<TransactionModel> get items => _items;

  Future<List<TransactionModel>> fetchTransaction() async {
    var result = await _service.getDataCollection();
    _items = result.docs
        .map((e) => TransactionModel(
            amount: e['amount'],
            date: e['date'],
            description: e['description']))
        .toList();

    notifyListeners();

    return _items;
  }

  Stream<QuerySnapshot> fetchTransactionsAsStream() {
    return _service.streamDataCollection();
  }

  Future addTransaction(TransactionModel data) async {
    await _service.addDocument(data.toJson());
    notifyListeners();
  }
}
