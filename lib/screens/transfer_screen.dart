import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sistema_bancario/providers/transaction_provider.dart';
import 'package:sistema_bancario/widgets/transaction_item.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({super.key});

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  @override
  Widget build(BuildContext context) {
    final transactionProvider = Provider.of<TransactionProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Movimientos"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
            itemCount: transactionProvider.items.length,
            itemBuilder: (context, index) =>
                TransactionItem(item: transactionProvider.items[index])),
      ),
    );
  }
}
