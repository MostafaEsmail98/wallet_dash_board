
import 'package:flutter/material.dart';
import 'package:wallet_dash_board/widgets/all_expenses.dart';
import 'package:wallet_dash_board/widgets/custom_container.dart';
import 'package:wallet_dash_board/widgets/drawer.dart';
import 'package:wallet_dash_board/widgets/income_section.dart';
import 'package:wallet_dash_board/widgets/quick_invoice.dart';
import 'package:wallet_dash_board/widgets/transaction_section.dart';
import 'my_card_section.dart';

class LayoutDesktop extends StatelessWidget {
  const LayoutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 2,
          child: DrawerDashBoard(),
        ),
      Expanded(
          flex: 8,
          child:
      CustomScrollView(
        slivers: [
          SliverFillRemaining(
          hasScrollBody: false,
          fillOverscroll: true,
          child: Row(
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 40.0),
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
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.only(top: 40.0, left: 24,right: 24),
                  child: Column(
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
                      Expanded(child: IncomeSection()),
                    ],
                  ),
                ),
              ) ,
            ],
          ),
            ),

        ]
      ))
      ],
    );
  }


}


