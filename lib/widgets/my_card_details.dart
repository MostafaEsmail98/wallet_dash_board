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
          title: FittedBox(
            alignment: Alignment.centerLeft,
            fit: BoxFit.scaleDown,
            child: Text(
              "Name card",
              style: AppStyles.textRegular16(context)
                  .copyWith(color: Colors.white),
            ),
          ),
          subtitle: FittedBox(
            alignment: Alignment.centerLeft,
            fit: BoxFit.scaleDown,
            child: Text(
              cardDetailsModel.title,
              style: AppStyles.textMedium20(context)
                  .copyWith(color: Colors.white),
            ),
          ),
          trailing:  FittedBox(
              fit:BoxFit.scaleDown,child: Icon(cardDetailsModel.icon)),
        ),
         const Spacer(),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            cardDetailsModel.id,
            style: AppStyles.textSemiBold24(context)
                .copyWith(color: Colors.white),
          ),
        ),
        FittedBox(
           fit: BoxFit.scaleDown,
          child: Text(
            cardDetailsModel.date,
            style: AppStyles.textRegular16(context)
                .copyWith(color: Colors.white),
          ),
        ),


      ],
    );
  }
}
