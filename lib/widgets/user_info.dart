
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet_dash_board/utils/app_styles.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key, required this.title, required this.subTitle, required this.image,
  });
  final String title ;
  final String subTitle;
  final String image ;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(image),
      title:  Text(title,style: AppStyles.textSemiBold16,),
      subtitle:  Text(subTitle,style: AppStyles.textRegular12,),

    );
  }
}