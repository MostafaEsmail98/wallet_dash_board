import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet_dash_board/generated/assets.dart';
import 'package:wallet_dash_board/models/list_item.dart';

import '../utils/app_styles.dart';

class ListItemsOfDrawer extends StatefulWidget {
  const ListItemsOfDrawer({
    super.key,
  });

  static const List<ListItem> items = [
    ListItem("Dashboard", Assets.imagesDashboard),
    ListItem("My Transaction", Assets.imagesTransaction),
    ListItem("Statistics", Assets.imagesStatistics),
    ListItem("Wallet Account", Assets.imagesWallet),
    ListItem("My Investments", Assets.imagesInvestments),
  ];

  @override
  State<ListItemsOfDrawer> createState() => _ListItemsOfDrawerState();
}

class _ListItemsOfDrawerState extends State<ListItemsOfDrawer> {

  late int active = 0 ;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: ListItemsOfDrawer.items.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            if (active != index) {
              setState(() {});
              active = index;
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 14),
            child: ListTile(
              title: Text(ListItemsOfDrawer.items[index].title,
                  style: active == index
                      ? AppStyles.textSemiBold16
                      : AppStyles.textRegular16),
              leading: SvgPicture.asset(ListItemsOfDrawer.items[index].images),
              trailing:  active == index? Container(width: 4,color:Color(0xff4EB7F2)):null,
            ),
          ),
        );
      },
    );
  }
}
