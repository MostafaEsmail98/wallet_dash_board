import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:wallet_dash_board/models/all_expenses_one_item_model.dart';
import 'package:wallet_dash_board/utils/app_images.dart';
import 'package:wallet_dash_board/widgets/all_expenses_one_item.dart';

class AllExpensesItems extends StatefulWidget {
  const AllExpensesItems({
    super.key,
  });

  @override
  State<AllExpensesItems> createState() => _AllExpensesItemsState();
}

class _AllExpensesItemsState extends State<AllExpensesItems> {
  List<AllExpensesOneItemModel> itemModel = [
    AllExpensesOneItemModel(
        name: "Balance",
        date: "April 2022",
        price: r"$20,129",
        image: AppImages.balance,
        active: 0),
    AllExpensesOneItemModel(
        name: "Income",
        date: "April 2022",
        price: r"$20,129",
        image: AppImages.income,
        active: 1),
    AllExpensesOneItemModel(
        name: "Expenses",
        date: "April 2022",
        price: r"$20,129",
        image: AppImages.expenses,
        active: 2),
  ];

  int active = 0;

  @override
  Widget build(BuildContext context) {
    return  Row(
            children: itemModel.asMap().entries.map((e) {
            int index = e.key;
            var item = e.value;
            return Expanded(
                child: InkWell(
              onTap: () {
                if (index == 0) {
                  active = 0;
                  setState(() {});
                } else if (index == 1) {
                  active = 1;
                  setState(() {});
                } else {
                  active = 2;
                  setState(() {});
                }
              },
              child: AllExpensesOneItem(
                allExpensesOneItemModel: item,
                active: active,
              ),
            ));
          }).toList());
  }
}
