import 'package:flutter/material.dart';
import 'package:wallet_dash_board/models/transaction_model.dart';
import 'package:wallet_dash_board/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    super.key,
    required this.transactionModel,
  });

  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListTile(
        trailing: Text(transactionModel.price,
            style: AppStyles.textSemiBold20(context).copyWith(
                color: transactionModel.isWithdrawal
                    ? const Color(0xffF3735E)
                    : const Color(0xff7DD97B))),
        title: Text(
          transactionModel.title,
          style: AppStyles.textSemiBold16(context),
        ),
        subtitle: Text(
          transactionModel.date,
          style: AppStyles.textRegular12(context),
        ),
      ),
    );
  }
}
