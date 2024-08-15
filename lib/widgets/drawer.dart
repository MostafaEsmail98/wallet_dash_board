import 'package:flutter/material.dart';

import 'package:wallet_dash_board/models/user_info_model.dart';
import 'package:wallet_dash_board/utils/app_images.dart';
import 'package:wallet_dash_board/widgets/items_of_setting_and_logout.dart';
import 'package:wallet_dash_board/widgets/list_items_of_drawer.dart';
import 'package:wallet_dash_board/widgets/user_info.dart';

class DrawerDashBoard extends StatelessWidget {
  const DrawerDashBoard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only( right: 32),
      child: Container(
        width: 300,
        color: Colors.white,
        child: const CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: UserInfo(
                userInfoModel: UserInfoModel(
                    title: "Lekan Okeowo",
                    subTitle: "demo@gmail.com",
                    image: AppImages.avatar1),
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
