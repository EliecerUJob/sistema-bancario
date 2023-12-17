class Transaction {
  String transactionId;
  String description;
  double amount;
  String date;

  Transaction(
      {required this.transactionId,
      required this.description,
      required this.amount,
      required this.date});
}
