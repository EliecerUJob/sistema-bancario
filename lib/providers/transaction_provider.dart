import 'package:flutter/foundation.dart';
import 'package:sistema_bancario/models/transaction.dart';

class TransactionProvider with ChangeNotifier {
  final List<Transaction> _items = [
    Transaction(
        transactionId: "1",
        description: "cuota de manejo tarjeta debito",
        amount: 9000.00,
        date: "4 de febrero 2019"),
    Transaction(
        transactionId: "2",
        description: "transferencia cta banca movil",
        amount: 150.000,
        date: "5 de febrero 2019"),
  ];
  List<Transaction> get items => _items;

  void addTransaction(Transaction transaction) {
    _items.add(transaction);
    notifyListeners();
  }
}
