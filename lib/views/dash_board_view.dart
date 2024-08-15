import 'package:flutter/material.dart';
import 'package:wallet_dash_board/widgets/adaptive_layout.dart';
import 'package:wallet_dash_board/widgets/drawer.dart';
import 'package:wallet_dash_board/widgets/layout_desktop.dart';

import '../widgets/layout_mobile.dart';
import '../widgets/layout_tablet.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> globalKey = GlobalKey();
    return Scaffold(
      key: globalKey,
      appBar: MediaQuery.sizeOf(context).width < 600 ? AppBar(
        backgroundColor: const Color(0xff4EB7F2),
        leading: IconButton(onPressed: (){
          globalKey.currentState!.openDrawer();
        }, icon: const Icon(Icons.menu))): null,
      drawer: const DrawerDashBoard(),
      backgroundColor: const Color(0xffE5E5E5),
      body: AdaptiveLayout(
          layoutMobil: (context) => const LayoutMobile(),
          layoutTablet: (context) => const LayoutTablet(),
          layoutDesktop: (context) => const LayoutDesktop(),),
    );
  }
}
