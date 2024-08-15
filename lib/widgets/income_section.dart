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
    double width = MediaQuery.sizeOf(context).width;
    print(width);
    return CustomContainer(
        child: Column(
              children: [
        const IncomeHeader(),
        const SizedBox(
          height: 12,
        ),
        width > 1485 || width < 1250
            ?  const Row(
                children: [
                  Expanded(child: AspectRatio(aspectRatio: 1, child: IncomeChart())),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: SizedBox(
                      height: 1,
                      width: 40,
                    ),
                  ),
                  Expanded(
                      flex:2,
                      child: IncomeChartDetails()),
                ],
              )
            : const AspectRatio(aspectRatio: 2, child: IncomeChart()),
        width > 1485  || width < 1250? const SizedBox() : const IncomeChartDetails(),
              ],
            ));
  }
}
