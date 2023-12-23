import 'package:flutter/material.dart';
import 'package:sistema_bancario/models/account.dart';

import '../screens/account_transfer_screen.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({super.key, required this.data});

  final AccountModel data;

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Cuenta de Ahorro"),
            const Text("Ahorros"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${widget.data.accountNumber}"),
                const Text("Saldo disponible")
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text("${widget.data.balance}"),
            ),
            TextButton(
                child: const Text("Realizar movimientos."),
                onPressed: () => Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const AccountTransfer(),
                    ))),
          ],
        ),
      ),
    );
  }
}
