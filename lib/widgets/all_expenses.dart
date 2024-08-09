import 'package:flutter/material.dart';
import 'package:wallet_dash_board/widgets/all_expenses_header.dart';
import 'package:wallet_dash_board/widgets/all_expenses_items.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpensesHeader(),
        SizedBox(
          height: 16,
        ),
        AllExpensesItems(),
      ],
    );
  }
}
