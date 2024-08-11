import 'package:flutter/material.dart';
import 'package:wallet_dash_board/widgets/custom_container.dart';
import 'package:wallet_dash_board/widgets/income_chart.dart';
import 'package:wallet_dash_board/widgets/income_chart_details.dart';
import 'package:wallet_dash_board/widgets/income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
        child: Column(
          children: [
            IncomeHeader(),
            SizedBox(height: 12,),
            Row(
              children: [
                Expanded(
                  child: AspectRatio(
                      aspectRatio: 1,
                      child: IncomeChart()),
                ),
                SizedBox(width: 40,),
                Expanded(
                    flex: 2,
                    child: IncomeChartDetails())
              ],
            ),
          ],
        ));
  }
}