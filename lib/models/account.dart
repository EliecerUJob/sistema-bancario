//     final accountModel = accountModelFromJson(jsonString);

import 'dart:convert';

AccountModel accountModelFromJson(String str) =>
    AccountModel.fromJson(json.decode(str));

String accountModelToJson(AccountModel data) => json.encode(data.toJson());

class AccountModel {
  String? accountNumber;
  String? accountHolder;
  int? balance;

  AccountModel({
    this.accountNumber,
    this.accountHolder,
    this.balance,
  });

  factory AccountModel.fromJson(Map<String, dynamic> json) => AccountModel(
        accountNumber: json["accountNumber"],
        accountHolder: json["accountHolder"],
        balance: json["balance"],
      );

  Map<String, dynamic> toJson() => {
        "accountNumber": accountNumber,
        "accountHolder": accountHolder,
        "balance": balance,
      };
}
