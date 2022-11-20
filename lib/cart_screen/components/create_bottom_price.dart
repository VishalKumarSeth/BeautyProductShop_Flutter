import 'package:flutter/material.dart';
import 'package:shopping_flutter/constant.dart';

class CreateBottomPriceRow extends StatelessWidget {
  final String title;
  final double price;
  final bool showTotalItemText;
  const CreateBottomPriceRow({
    Key? key,
    required this.title,
    required this.price,
    required this.showTotalItemText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
                child: Text(
                  showTotalItemText ? '(4 Items)' : '',
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Text(
                '\$$price',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                    right: kDefaultPadding, left: kDefaultPadding / 3),
                child: Text(
                  'USD',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: kTextLightColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
