import 'package:flutter/material.dart';

class AccountTransfer extends StatelessWidget {
  const AccountTransfer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Realiza tu movimiento"),
      ),
      body: const Center(
        child: Text("Realizando movimiento bancario"),
      ),
    );
  }
}
