// To parse this JSON data, do
//
//     final transaction = transactionFromJson(jsonString);

import 'dart:convert';

TransactionModel transactionFromJson(String str) =>
    TransactionModel.fromJson(json.decode(str));

String transactionToJson(TransactionModel data) => json.encode(data.toJson());

class TransactionModel {
  int? amount;
  String? description;
  String? date;

  TransactionModel({
    this.amount,
    this.description,
    this.date,
  });

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      TransactionModel(
        amount: json["amount"],
        description: json["description"],
        date: json["date"],
      );

  Map<String, dynamic> toJson() => {
        "amount": amount,
        "description": description,
        "date": date,
      };
}
