import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sistema_bancario/models/transaction.dart';
import 'package:sistema_bancario/providers/transaction_provider.dart';
import 'package:sistema_bancario/widgets/transaction_item.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({super.key});

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  late List<TransactionModel> transactions;

  @override
  Widget build(BuildContext context) {
    final transactionProvider = Provider.of<TransactionProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Movimientos"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: StreamBuilder(
          stream: transactionProvider.fetchTransactionsAsStream(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              transactions = snapshot.data!.docs
                  .map((e) => TransactionModel(
                      amount: e['amount'],
                      date: e['date'],
                      description: e['description']))
                  .toList();

              return ListView.builder(
                  itemCount: transactions.length,
                  itemBuilder: (context, index) =>
                      TransactionItem(item: transactions[index]));
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
