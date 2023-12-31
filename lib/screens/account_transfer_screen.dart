import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:sistema_bancario/models/transaction.dart';
import 'package:sistema_bancario/providers/account_provider.dart';
import 'package:sistema_bancario/providers/transaction_provider.dart';

// import 'package:intl/intl.dart';

class AccountTransfer extends StatefulWidget {
  const AccountTransfer({super.key});

  @override
  State<AccountTransfer> createState() => _AccountTransferState();
}

class _AccountTransferState extends State<AccountTransfer> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final providerTransaction = Provider.of<TransactionProvider>(context);

    final providerAccount = Provider.of<AccountProvider>(context);

    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    final String formatted = formatter.format(now);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Realiza tu movimiento"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Form(
                child: TextFormField(
              controller: textController,
              decoration: const InputDecoration(
                  alignLabelWithHint: true,
                  label: Text("Ingresa valor a transferir"),
                  floatingLabelStyle: TextStyle(fontSize: 20),
                  prefixIcon: Icon(Icons.attach_money)),
              keyboardType: const TextInputType.numberWithOptions(),
            )),
            ElevatedButton(
                style: const ButtonStyle(
                    fixedSize: MaterialStatePropertyAll(Size(400, 50))),
                onPressed: () {
                  providerTransaction.addTransaction(TransactionModel(
                      description: "Transferencia realizada",
                      amount: int.parse(textController.text),
                      date: formatted));

                  providerAccount.decreaseBalance(
                      int.parse(textController.text), "SgAVkT6mCZgN59qxNoMA");

                  Navigator.pop(context);
                },
                child: const Text(
                  "Continuar",
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
