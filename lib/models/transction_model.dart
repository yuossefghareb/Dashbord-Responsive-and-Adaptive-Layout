class TransctionModel {
  final String title;

  final String date;
  final String amount;
  final bool isWithdrawal;

 const  TransctionModel({
   required this.isWithdrawal, 
    required this.title,
    required this.date,
    required this.amount,
  });
}
