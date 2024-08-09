
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet_dash_board/models/user_info_model.dart';
import 'package:wallet_dash_board/utils/app_styles.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key, required this.userInfoModel,
  });
 final UserInfoModel userInfoModel ;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(userInfoModel.image),
      title:  Text(userInfoModel.title,style: AppStyles.textSemiBold16,),
      subtitle:  Text(userInfoModel.subTitle,style: AppStyles.textRegular12,),

    );
  }
}