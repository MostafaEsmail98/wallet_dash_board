
import 'package:flutter/material.dart';
import 'package:wallet_dash_board/utils/app_styles.dart';

class TransactionHeader extends StatelessWidget {
  const TransactionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text("Transaction History",style: AppStyles.textSemiBold20(context),),
        Text("See all",style: AppStyles.textMedium16(context).copyWith(color: const Color(0xff4EB7F2)),)
      ],
    );
  }
}
