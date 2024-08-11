class TransactionModel {
 final String title;
 final String date ;
 final String price ;
 final bool isWithdrawal;

  const TransactionModel( {required this.isWithdrawal,required this.title, required this.date, required this.price});
}