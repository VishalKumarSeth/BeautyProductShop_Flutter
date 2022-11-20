import 'package:flutter/material.dart';
import 'package:shopping_flutter/constant.dart';
import 'package:shopping_flutter/details_screen/details_screen.dart';

class TitleWithReviews extends StatelessWidget {
  const TitleWithReviews({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final DetailsScreen widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.product.title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: kTextColor,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Size: ${widget.product.size} ml',
              style: const TextStyle(
                color: kTextLightColor,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star_half),
                Icon(Icons.star_outline),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              '(132 reviews)',
              style: TextStyle(
                color: kTextLightColor,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
