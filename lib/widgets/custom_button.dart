import 'package:flutter/material.dart';
import 'package:wallet_dash_board/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.text, required this.colorText, required this.colorBox,
  });
  final String text;
  final Color  colorText ;
  final Color  colorBox ;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all( 12.0),
        child: SizedBox(
          height: 62,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                elevation: 0,
                backgroundColor: colorBox),
            onPressed: () {},
            child:  Text(
              text,
              style: AppStyles.textSemiBold18.copyWith(color:colorText),
            ),
          ),
        ),
      ),
    );
  }
}