import 'package:flutter/material.dart';
import 'package:wallet_dash_board/utils/app_styles.dart';
import 'package:wallet_dash_board/widgets/custom_button.dart';
import 'package:wallet_dash_board/widgets/custom_container.dart';
import 'package:wallet_dash_board/widgets/quick_invoice_header.dart';
import 'package:wallet_dash_board/widgets/quick_invoice_information.dart';
import 'package:wallet_dash_board/widgets/quick_invoice_items.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        SizedBox(
          height: 24,
        ),
        Text(
          "Latest Transaction",
          style: AppStyles.textMedium16,
        ),
        QuickInvoiceItems(),
        Divider(
          height: 48,
          color: Color(0xffF1F1F1),
        ),
        QuickInvoiceInformation(),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
             CustomButton(text:"Add more details" ,colorText:  Color(0xff4EB7F2),colorBox:  Colors.white,),
             CustomButton(text:"Send Money" ,colorText: Colors.white,colorBox:  Color(0xff4EB7F2) ,),

          ],
        )
      ],
    ));
  }
}


