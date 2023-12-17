import 'package:flutter/material.dart';
import 'package:sistema_bancario/screens/account_transfer_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text("Eliecer Ureche"), Text("Saldos de la cuenta")],
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
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("912-438383-51"),
                          Text("Saldo disponible")
                        ],
                      ),
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Text("0,00"),
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
