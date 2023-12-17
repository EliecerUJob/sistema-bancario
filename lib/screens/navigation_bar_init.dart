import 'package:flutter/material.dart';
import 'package:sistema_bancario/screens/home_screen.dart';
import 'package:sistema_bancario/screens/transfer_screen.dart';

class NavigationBarInit extends StatefulWidget {
  const NavigationBarInit({super.key});

  @override
  State<NavigationBarInit> createState() => _NavigationBarInitState();
}

class _NavigationBarInitState extends State<NavigationBarInit> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: "Inicio"),
            NavigationDestination(
                icon: Icon(Icons.attach_money), label: "Movimientos"),
          ],
          selectedIndex: currentPageIndex,
        ),
        body: [const HomeScreen(), const TransferScreen()][currentPageIndex]);
  }
}
