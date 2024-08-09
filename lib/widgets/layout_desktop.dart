import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet_dash_board/utils/app_images.dart';
import 'package:wallet_dash_board/utils/app_styles.dart';
import 'package:wallet_dash_board/widgets/all_expenses.dart';
import 'package:wallet_dash_board/widgets/all_expenses_header.dart';
import 'package:wallet_dash_board/widgets/all_expenses_items.dart';
import 'package:wallet_dash_board/widgets/custom_container.dart';
import 'package:wallet_dash_board/widgets/drawer.dart';
import 'package:wallet_dash_board/widgets/quick_invoice.dart';
import 'package:wallet_dash_board/widgets/quick_invoice_header.dart';
import 'package:wallet_dash_board/widgets/user_info.dart';

import '../models/user_info_model.dart';

class LayoutDesktop extends StatelessWidget {
  const LayoutDesktop({super.key});


  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: DrawerDashBoard(),
        ),
        Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 40.0),
                    child: CustomContainer(
                      child: AllExpenses(),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  QuickInvoice(),
                ],
              ),
            ))
      ],
    );
  }
}

