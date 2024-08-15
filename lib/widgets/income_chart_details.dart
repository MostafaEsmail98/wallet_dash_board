import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wallet_dash_board/utils/app_styles.dart';

class IncomeChartDetails extends StatelessWidget {
  const IncomeChartDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        incomeDetails(color: const Color(0xff208CC8),title: "Design service",number: "40%", context: context),
        incomeDetails(color: const Color(0xff4EB7F2),title: "Design product",number: "25%", context: context),
        incomeDetails(color: const Color(0xff064061),title: "Product royalti",number: "20%", context: context),
        incomeDetails(color: const Color(0xffE2DECD),title: "Other",number: "22%", context: context),
      ],
    );
  }

  Widget incomeDetails({required BuildContext context,required Color color, required String title, required String number}) {

    return ListTile(
      contentPadding: EdgeInsets.zero,

    title:  Text(title,style:AppStyles.textRegular16(context) ,),
        leading: dotOfIncome(color),
        trailing: Text(number,style: AppStyles.textMedium16(context),),
        );
  }

  Container dotOfIncome(Color color) {
    return Container(
      width: 8,
          height: 8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color:  color,
          ),
       );
  }
}
