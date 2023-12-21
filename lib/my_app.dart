import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sistema_bancario/providers/account_provider.dart';
import 'package:sistema_bancario/providers/transaction_provider.dart';
import 'package:sistema_bancario/screens/navigation_bar_init.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => TransactionProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => AccountProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
          useMaterial3: true,
        ),
        darkTheme: ThemeData(brightness: Brightness.dark, useMaterial3: true),
        home: const NavigationBarInit(),
      ),
    );
  }
}
