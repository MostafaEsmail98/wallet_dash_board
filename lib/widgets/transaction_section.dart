import 'package:flutter/material.dart';
import 'package:wallet_dash_board/utils/app_styles.dart';
import 'package:wallet_dash_board/widgets/transaction_header.dart';
import 'package:wallet_dash_board/widgets/transaction_list_view.dart';

class TransactionSection extends StatelessWidget {
  const TransactionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHeader(),
        const SizedBox(
          height: 20,
        ),
        Text(
          "13 April 2022",
          style: AppStyles.textMedium16(context)
              .copyWith(color: const Color(0xffAAAAAA)),
        ),
        const SizedBox(height: 16,),
        const TransactionListView()

      ],
    );
  }
}


