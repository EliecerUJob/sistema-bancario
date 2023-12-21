import 'package:flutter/material.dart';
import 'package:sistema_bancario/models/transaction.dart';

class TransactionItem extends StatefulWidget {
  const TransactionItem({required this.item, super.key});

  final TransactionModel item;

  @override
  State<TransactionItem> createState() => _TransactionItemState();
}

class _TransactionItemState extends State<TransactionItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "${widget.item.date}",
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              "${widget.item.amount}",
              style: const TextStyle(),
            ),
          ],
        ),
        Text(widget.item.description!.toUpperCase()),
        const SizedBox(
          height: 10,
        ),
        const Divider()
      ],
    );
  }
}
