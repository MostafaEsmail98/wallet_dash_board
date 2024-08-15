import 'package:flutter/material.dart';
import 'package:wallet_dash_board/models/user_info_model.dart';
import 'package:wallet_dash_board/utils/app_images.dart';
import 'package:wallet_dash_board/widgets/user_info.dart';

class QuickInvoiceItems extends StatelessWidget {
  const QuickInvoiceItems({
    super.key,

  });

  static const List<UserInfoModel> items = [
    UserInfoModel(
        title: "Madrani Andi",
        image: AppImages.avatar1,
        subTitle: "Madraniadi20@gmail"),
    UserInfoModel(
        title: "Josua Nunito",
        image: AppImages.avatar2,
        subTitle: "Josh Nunito@gmail.com"),
    UserInfoModel(
        title: "Lekan Okeowo",
        image: AppImages.avatar1,
        subTitle: "demo@gmail.com"),
  ];


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
            child: UserInfo(userInfoModel: items[index]),
          );
        },
      ),
    );
  }
}