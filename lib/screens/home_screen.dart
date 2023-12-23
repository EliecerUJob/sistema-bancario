import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sistema_bancario/models/account.dart';
import 'package:sistema_bancario/providers/account_provider.dart';
import 'package:sistema_bancario/widgets/account_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  AccountModel account = AccountModel();

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AccountProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Sistema bancario"),
      ),
      body: StreamBuilder<Object>(
          stream: provider.fethAccountAsStream(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              provider.getAccountById("SgAVkT6mCZgN59qxNoMA").then((value) {
                account = AccountModel(
                    accountNumber: value.accountNumber,
                    accountHolder: value.accountHolder,
                    balance: value.balance);
              });
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${account.accountHolder}"),
                          const Text("Saldos de la cuenta")
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CardWidget(data: account)
                    ],
                  ),
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
