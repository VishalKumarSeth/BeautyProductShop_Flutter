import 'package:flutter/material.dart';
import 'package:shopping_flutter/constant.dart';
import 'package:shopping_flutter/details_screen/components/bottom_details_card.dart';
import 'package:shopping_flutter/details_screen/components/details_quare_icons.dart';
import 'package:shopping_flutter/models/products.dart';

class DetailsScreen extends StatefulWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int numberOfItems = 1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: buildDetailsScreenAppbar(context),
      body: Column(
        children: [
          SizedBox(
            height: size.height - 110,
            child: Stack(
              children: [
                topImageAndDetails(size),
                BottomTitleReviewsCard(size: size, widget: widget),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column topImageAndDetails(Size size) {
    return Column(
      children: [
        Image.asset(
          //Top image
          widget.product.image,
          height: size.height * 0.42,
        ),
        //CarouselSlider
        Padding(
          // Three Dots
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              createPageDot(kTextLightColor),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: createPageDot(kTextColor),
              ),
              createPageDot(kTextLightColor),
            ],
          ),
        ),
        Row(
          // Three square icons
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            DetailsSquareIcon(
                title: 'Vegan', imageName: 'assets/icons/vegan.png'),
            DetailsSquareIcon(
                title: 'Natural', imageName: 'assets/icons/natural.png'),
            DetailsSquareIcon(
                title: 'C+ Neutral', imageName: 'assets/icons/neutral.png'),
          ],
        ),
      ],
    );
  }

  Container createPageDot(Color colorDot) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: colorDot,
      ),
    );
  }

  AppBar buildDetailsScreenAppbar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: kBackgroundColor,
      leading: IconButton(
        onPressed: (() {
          Navigator.pop(context);
        }),
        icon: const Icon(
          Icons.arrow_back_ios,
          color: kTextColor,
        ),
      ),
      actions: [
        IconButton(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          onPressed: (() {}),
          icon: const Icon(
            Icons.dashboard_outlined,
            color: kTextColor,
            size: 30,
          ),
        )
      ],
    );
  }
}
