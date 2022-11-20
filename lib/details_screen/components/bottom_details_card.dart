import 'package:flutter/material.dart';
import 'package:shopping_flutter/constant.dart';
import 'package:shopping_flutter/details_screen/components/price_with_cartcounter_cartbutton.dart';
import 'package:shopping_flutter/details_screen/components/title_with_reviews.dart';
import 'package:shopping_flutter/details_screen/details_screen.dart';

class BottomTitleReviewsCard extends StatelessWidget {
  const BottomTitleReviewsCard({
    Key? key,
    required this.size,
    required this.widget,
  }) : super(key: key);

  final Size size;
  final DetailsScreen widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: size.height * 0.62),
      padding: const EdgeInsets.all(30),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 0.5,
            color: kTextLightColor,
          ),
        ],
      ),
      child: Column(
        children: [
          TitleWithReviews(widget: widget),
          const SizedBox(height: kDefaultPadding * 1.5),
          PriceWithCartCAndCounter(widget: widget),
        ],
      ),
    );
  }
}
