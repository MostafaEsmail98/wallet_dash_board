import 'package:flutter/material.dart';
import 'package:wallet_dash_board/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key, required this.title, required this.hint,
  });
  final String title;
  final String hint ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
            title,
            style: AppStyles.textMedium16(context),
          ),
          const SizedBox(height: 12,),
          TextField(
            decoration: InputDecoration(
              hintText: hint,
                hintStyle: AppStyles.textRegular16(context).copyWith(color: const Color(0xffAAAAAA)),
                fillColor: const Color(0xffFAFAFA),
                filled: true,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                    const BorderSide(color: Color(0xffFAFAFA))),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                    const BorderSide(color: Color(0xffFAFAFA))),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                    const BorderSide(color: Color(0xffFAFAFA)))),
          )
        ],
      ),
    );
  }
}