import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sistema_bancario/providers/account_provider.dart';
import 'package:sistema_bancario/screens/account_transfer_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AccountProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sistema bancario"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${provider.account.accountHolder}"),
                  const Text("Saldos de la cuenta")
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
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
                          Text("${provider.account.accountNumber}"),
                          const Text("Saldo disponible")
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text("${provider.account.balance}"),
                      ),
                      TextButton(
                          child: const Text("Realizar movimientos."),
                          onPressed: () => Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        const AccountTransfer(),
                              ))),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
