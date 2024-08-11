import 'package:flutter/material.dart';
import 'package:wallet_dash_board/widgets/custom_dot_indicator.dart';


class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentState});

  final int currentState ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children:List.generate(3, (index) =>  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        child: CustomDotIndicator(isActive: index == currentState),
      )));
  }
}
