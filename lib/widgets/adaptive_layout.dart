import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  final WidgetBuilder layoutMobil, layoutTablet, layoutDesktop;

  const AdaptiveLayout(
      {super.key,
        required this.layoutMobil,
        required this.layoutTablet,
        required this.layoutDesktop});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < 600) {
        return layoutMobil(context);
      } else if (constrains.maxWidth <= 1250) {
        return layoutTablet(context);
      } else {
        return layoutDesktop(context);
      }
    });
  }
}