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
        TransactionHeader(),
        SizedBox(
          height: 20,
        ),
        Text(
          "13 April 2022",
          style: AppStyles.textMedium16
              .copyWith(color: Color(0xffAAAAAA)),
        ),
        SizedBox(height: 16,),
        TransactionListView()

      ],
    );
  }
}


