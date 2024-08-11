import 'package:flutter/material.dart';
import 'package:wallet_dash_board/utils/app_styles.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Text("Income",style: AppStyles.textSemiBold20,),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xffF1F1F1),width: 2)
          ),
          child: const Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(
              children: [
                Text("Monthly",style: AppStyles.textMedium16,),
                SizedBox(width: 18,),
                Icon(Icons.arrow_drop_down,size: 24,color: Color(0xff064061),)
              ],
            ),
          ),
        )
      ],
    );
  }
}
