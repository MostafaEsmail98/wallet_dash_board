

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet_dash_board/utils/app_images.dart';
import 'package:wallet_dash_board/utils/app_styles.dart';

class ItemsOfSettingAndLogout extends StatelessWidget {
  const ItemsOfSettingAndLogout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Column(
        children: [
          const Expanded(child: SizedBox()),
          ListTile(
            title: const Text(
              "Setting system",
              style: AppStyles.textRegular16,
            ),
            leading: SvgPicture.asset(AppImages.setting),
          ),
          ListTile(
            title: const Text("Logout account", style: AppStyles.textRegular16),
            leading: SvgPicture.asset(AppImages.logout),
          ),
          const SizedBox(
            height: 48,
          )
        ],
      ),
    );
  }
}
