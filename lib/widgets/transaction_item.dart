import 'package:flutter/material.dart';
import 'package:sistema_bancario/models/transaction.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({required this.item, super.key});

  final Transaction item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              item.date,
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              "${item.amount}",
              style: const TextStyle(),
            ),
          ],
        ),
        Text(item.description.toUpperCase()),
        const SizedBox(
          height: 10,
        ),
        const Divider()
      ],
    );
  }
}
