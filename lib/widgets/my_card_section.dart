import 'package:flutter/material.dart';
import 'package:wallet_dash_board/utils/app_styles.dart';
import 'package:wallet_dash_board/widgets/custom_container.dart';
import 'package:wallet_dash_board/widgets/my_card.dart';
import 'dots_indicator.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({
    super.key,
  });

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController ;
  int currentPageIndex= 0 ;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {
      });
    },);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
     Text(
      "My Card",
      style: AppStyles.textSemiBold20(context),
    ),
    const SizedBox(
      height: 20,
    ),
    MyCard(pageController: pageController,),
    const SizedBox(
      height: 20,
    ),
    DotsIndicator(currentState: currentPageIndex,)
          ],
        );
  }
}

