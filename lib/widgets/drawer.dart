import 'package:flutter/material.dart';
import 'package:wallet_dash_board/generated/assets.dart';
import 'package:wallet_dash_board/widgets/items_of_setting_and_logout.dart';
import 'package:wallet_dash_board/widgets/list_items_of_drawer.dart';
import 'package:wallet_dash_board/widgets/user_info.dart';

class DrawerDashBoard extends StatelessWidget {
  const DrawerDashBoard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 32),
      child: Container(
        color: Colors.white,
        child: const CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: UserInfo(
                title: "Lekan Okeowo",
                subTitle: "demo@gmail.com",
                image: Assets.imagesAvatar1,
              ),
            ),
            ListItemsOfDrawer(),
            ItemsOfSettingAndLogout(),
          ],
        ),
      ),
    );
  }
}