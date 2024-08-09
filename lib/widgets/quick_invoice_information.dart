
import 'package:flutter/material.dart';
import 'package:wallet_dash_board/widgets/custom_text_field.dart';

class QuickInvoiceInformation extends StatelessWidget {
  const QuickInvoiceInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTextField(title: "Customer name",hint: "Type customer name",),
            ), Expanded(
              child: CustomTextField(title: "Customer Email",hint: "Type customer email",),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: CustomTextField(title: "Item name",hint: "Type customer name",),
            ), Expanded(
              child: CustomTextField(title: "Item mount",hint: "USD",),
            ),
          ],
        ),
      ],
    );
  }
}