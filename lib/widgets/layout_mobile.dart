import 'package:flutter/material.dart';
import 'package:wallet_dash_board/widgets/all_expenses.dart';
import 'package:wallet_dash_board/widgets/custom_container.dart';
import 'package:wallet_dash_board/widgets/income_section.dart';
import 'package:wallet_dash_board/widgets/my_card_section.dart';
import 'package:wallet_dash_board/widgets/quick_invoice.dart';
import 'package:wallet_dash_board/widgets/transaction_section.dart';

class LayoutMobile extends StatelessWidget {
  const LayoutMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
        slivers:[ SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: CustomContainer(
                        child: AllExpenses(),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    QuickInvoice(),
                  ],
                ),
                SizedBox(height: 24,),
                Column(
                  children: [
                    CustomContainer(
                        child: Column(
                          children: [
                             MyCardSection(),
                            Divider(
                              height: 40,
                            ),
                             TransactionSection()
                          ],
                        )),
                    SizedBox(
                      height: 24,
                    ),
                    IncomeSection(),
                  ],
                ),
              ],
            ),
          ),
        ),

        ]
    );
  }
}
