
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
        const Text("Transaction History",style: AppStyles.textSemiBold20,),
        Text("See all",style: AppStyles.textMedium16.copyWith(color: const Color(0xff4EB7F2)),)
      ],
    );
  }
}
