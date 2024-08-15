import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:wallet_dash_board/models/card_details_model.dart';
import 'package:wallet_dash_board/utils/app_images.dart';
import 'package:wallet_dash_board/widgets/my_card_details.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  static const List<CardDetailsModel> items = [
    CardDetailsModel(
        title: "Syah Bandi",
        date: "12/20 - 124",
        icon: Icons.image_outlined,
        id: "0918 8124 0042 8129"),
    CardDetailsModel(
        title: "Madrani Andi",
        date: "12/20 - 124",
        icon: Icons.image_outlined,
        id: "4556 8124 4564 2344"),
    CardDetailsModel(
        title: "Josua Nunito",
        date: "12/20 - 124",
        icon: Icons.image_outlined,
        id: "1236 6743 3556 8129"),
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return ExpandablePageView.builder(
      controller: pageController,
      itemBuilder: (BuildContext context, int index) {
        return AspectRatio(
          aspectRatio: 420 / 215,
          child: Container(
            decoration: ShapeDecoration(
              image: const DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(AppImages.card)),
              color: const Color(0xFF4EB7F2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Padding(
              padding: width < 450
                  ? const EdgeInsets.only(left: 10.0, right: 20, bottom: 10)
                  : const EdgeInsets.only(
                      top: 20, left: 30.0, right: 45, bottom: 10),
              child: MyCardDetails(
                cardDetailsModel: items[index],
              ),
            ),
          ),
        );
      },
      itemCount: items.length,
    );
  }
}
