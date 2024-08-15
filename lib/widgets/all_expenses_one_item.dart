import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet_dash_board/models/all_expenses_one_item_model.dart';
import 'package:wallet_dash_board/utils/app_styles.dart';

class AllExpensesOneItem extends StatelessWidget {
  AllExpensesOneItem({
    super.key,
    required this.allExpensesOneItemModel,
    required this.active,
  });

  final AllExpensesOneItemModel allExpensesOneItemModel;
  int? active;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding : const EdgeInsets.only(right: 6.0),
      child: Container(
        padding:width < 420 ?const EdgeInsets.symmetric(horizontal: 8, vertical: 8):const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: BoxDecoration(
            color: active == allExpensesOneItemModel.active
                ? const Color(0xff4EB7F2)
                : null,
            borderRadius: BorderRadius.circular(12),
            border: active == allExpensesOneItemModel.active
                ? null
                : Border.all(color: const Color(0xffF1F1F1), width: 2)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(56),
                      color: active == allExpensesOneItemModel.active
                          ? const Color(0xff4EB7F2)
                          : const Color(0xffFAFAFA),
                    ),
                    child: active == allExpensesOneItemModel.active
                        ? SvgPicture.asset(
                            allExpensesOneItemModel.image,
                            colorFilter: const ColorFilter.mode(
                                Colors.white, BlendMode.srcIn),
                          )
                        : SvgPicture.asset(allExpensesOneItemModel.image)),
                const Spacer(),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Icon(
                    Icons.arrow_right,
                    size: 24,
                    color: active == allExpensesOneItemModel.active
                        ? Colors.white
                        : const Color(0xff064061),
                  ),
                )
              ],
            ),
            const FittedBox(
              fit: BoxFit.scaleDown,
              child: SizedBox(
                width: 1,
                height: 34,
              ),
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                allExpensesOneItemModel.name,
                style: active == allExpensesOneItemModel.active
                    ? AppStyles.textSemiBold16(context).copyWith(color: Colors.white)
                    : AppStyles.textSemiBold16(context),
              ),
            ),
            const FittedBox(
              fit: BoxFit.scaleDown,
              child: SizedBox(
                width: 1,
                height: 8,
              ),
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                allExpensesOneItemModel.date,
                style: active == allExpensesOneItemModel.active
                    ? AppStyles.textRegular14(context)
                        .copyWith(color: const Color(0xffFAFAFA))
                    : AppStyles.textRegular14(context),
              ),
            ),
            const FittedBox(
              fit: BoxFit.scaleDown,
              child: SizedBox(
                width: 1,
                height: 16,
              ),
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                allExpensesOneItemModel.price,
                style: active == allExpensesOneItemModel.active
                    ? AppStyles.textSemiBold24(context).copyWith(color: Colors.white)
                    : AppStyles.textSemiBold24(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
