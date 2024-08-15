
import 'package:flutter/material.dart';
import 'package:wallet_dash_board/models/transaction_model.dart';
import 'package:wallet_dash_board/widgets/transaction_item.dart';

class TransactionListView extends StatelessWidget {
  const TransactionListView({
    super.key,
  });
static const  List<TransactionModel> items = [
  TransactionModel(title: "Cash Withdrawal", date: "13 Apr, 2022 ", price: r"$20,129",isWithdrawal: true),
  TransactionModel(title: "Landing Page project", date: "13 Apr, 2022 at 3:30 PM", price: r"$2,000",isWithdrawal: false),
  TransactionModel(title: "Juni Mobile App project", date: "13 Apr, 2022 at 3:30 PM", price:  r"$20,129",isWithdrawal: false),
];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.asMap().entries.map((e){
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0),
          child: Card(
              elevation: 0,
              color:const Color(0xffFAFAFA) ,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: TransactionItem(transactionModel: items[e.key],)),
        );
      }).toList(),
    );
    return ListView.builder(
      itemCount: 3,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0),
          child: Card(
            elevation: 0,
            color:const Color(0xffFAFAFA) ,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: TransactionItem(transactionModel: items[index],)),
        );
      },);
  }
}