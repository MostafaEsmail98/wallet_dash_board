import 'package:flutter/material.dart';
import 'package:wallet_dash_board/models/card_details_model.dart';
import 'package:wallet_dash_board/utils/app_styles.dart';

class MyCardDetails extends StatelessWidget {
  const MyCardDetails({
    super.key, required this.cardDetailsModel,
  });
  final CardDetailsModel cardDetailsModel ;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            "Name card",
            style: AppStyles.textRegular16
                .copyWith(color: Colors.white),
          ),
          subtitle: Text(
            cardDetailsModel.title,
            style: AppStyles.textMedium20
                .copyWith(color: Colors.white),
          ),
          trailing:  Icon(cardDetailsModel.icon),
        ),
        const Spacer(),
        Text(
          cardDetailsModel.id,
          style: AppStyles.textSemiBold24
              .copyWith(color: Colors.white),
        ),
        Text(
          cardDetailsModel.date,
          style: AppStyles.textRegular16
              .copyWith(color: Colors.white),
        ),
        const SizedBox(
          height: 27,
        )
      ],
    );
  }
}
