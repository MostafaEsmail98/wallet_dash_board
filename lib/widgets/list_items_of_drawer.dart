import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet_dash_board/models/list_item.dart';
import 'package:wallet_dash_board/utils/app_images.dart';

import '../utils/app_styles.dart';

class ListItemsOfDrawer extends StatefulWidget {
  const ListItemsOfDrawer({
    super.key,
  });

  static const List<ListItem> items = [
    ListItem("Dashboard", AppImages.dashboard),
    ListItem("My Transaction", AppImages.transaction),
    ListItem("Statistics", AppImages.statistics),
    ListItem("Wallet Account", AppImages.wallet),
    ListItem("My Investments", AppImages.investments),
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
              title: FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: Text(ListItemsOfDrawer.items[index].title,
                    style: active == index
                        ? AppStyles.textSemiBold16(context)
                        : AppStyles.textRegular16(context)),
              ),
              leading: SvgPicture.asset(ListItemsOfDrawer.items[index].images),
              trailing:  active == index? Container(width: 4,color:const Color(0xff4EB7F2)):null,
            ),
          ),
        );
      },
    );
  }
}
