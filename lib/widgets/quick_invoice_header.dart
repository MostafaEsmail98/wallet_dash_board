import 'package:flutter/material.dart';
import 'package:wallet_dash_board/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
          "Quick Invoice",
          style: AppStyles.textSemiBold20(context),
        ),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xffFAFAFA),
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.add,
              size: 24,
              color: Color(0xff4EB7F2),
            ),
          ),
        )
      ],
    );
  }
}
