//     final accountModel = accountModelFromJson(jsonString);

import 'dart:convert';

import 'package:sistema_bancario/models/transaction.dart';

AccountModel accountModelFromJson(String str) =>
    AccountModel.fromJson(json.decode(str));

String accountModelToJson(AccountModel data) => json.encode(data.toJson());

class AccountModel {
  String? accountNumber;
  String? accountHolder;
  int? balance;
  List<TransactionModel>? transactions;

  AccountModel({
    this.accountNumber,
    this.accountHolder,
    this.balance,
    this.transactions,
  });

  factory AccountModel.fromJson(Map<String, dynamic> json) => AccountModel(
        accountNumber: json["accountNumber"],
        accountHolder: json["accountHolder"],
        balance: json["balance"],
        transactions: json["transactions"] == null
            ? []
            : List<TransactionModel>.from(
                json["transactions"]!.map((x) => TransactionModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "accountNumber": accountNumber,
        "accountHolder": accountHolder,
        "balance": balance,
        "transactions": transactions == null
            ? []
            : List<dynamic>.from(transactions!.map((x) => x.toJson()))
      };
}
