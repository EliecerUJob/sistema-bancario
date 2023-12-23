import 'package:get_it/get_it.dart';
import 'package:sistema_bancario/providers/account_provider.dart';
import 'package:sistema_bancario/providers/transaction_provider.dart';
import 'package:sistema_bancario/services/account_service.dart';
import 'package:sistema_bancario/services/transaction_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => TransactionService('transactions'));
  locator.registerLazySingleton(() => TransactionProvider());
  locator.registerLazySingleton(() => AccountService("accounts"));
  locator.registerLazySingleton(() => AccountProvider());
}
