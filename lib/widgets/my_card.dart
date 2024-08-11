import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet_dash_board/models/card_details_model.dart';
import 'package:wallet_dash_board/utils/app_images.dart';
import 'package:wallet_dash_board/widgets/my_card_details.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key, required this.pageController,
  });
  final PageController pageController ;
  static const List<CardDetailsModel> items =[
    CardDetailsModel(title: "Syah Bandi",date: "12/20 - 124",icon: Icons.image_outlined,id: "0918 8124 0042 8129"),
    CardDetailsModel(title: "Madrani Andi",date: "12/20 - 124",icon: Icons.image_outlined,id: "4556 8124 4564 2344"),
    CardDetailsModel(title: "Josua Nunito",date: "12/20 - 124",icon: Icons.image_outlined,id: "1236 6743 3556 8129"),
  ];

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
      controller: pageController,
      itemBuilder: (BuildContext context, int index) {
        return AspectRatio(
          aspectRatio: 420 / 215,
          child: Card(
            color: const Color(0xff4EB7F2),
            child: Stack(children: [
               Padding(
                padding: const EdgeInsets.only(
                    left: 30.0, top: 16, right: 45),
                child: MyCardDetails(cardDetailsModel: items[index],),
              ),
              SvgPicture.asset(AppImages.card)
            ]),
          ),
        );
      }, itemCount: items.length,

    );
  }
}

