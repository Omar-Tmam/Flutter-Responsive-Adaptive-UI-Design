class TransactionModel {
  final String title, date, amount;
  final bool withdrawl;

  const TransactionModel(
      {required this.title,
      required this.date,
      required this.amount,
      required this.withdrawl});
}
