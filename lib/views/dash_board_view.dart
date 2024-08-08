import 'package:flutter/material.dart';
import 'package:wallet_dash_board/widgets/adaptive_layout.dart';
import 'package:wallet_dash_board/widgets/layout_desktop.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
        layoutMobil: (context) => const SizedBox(),
        layoutTablet: (context) => const SizedBox(),
        layoutDesktop: (context) => const LayoutDesktop(),);
  }
}
