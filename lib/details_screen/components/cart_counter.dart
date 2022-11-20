import 'package:flutter/material.dart';
import 'package:shopping_flutter/constant.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({
    Key? key,
  }) : super(key: key);

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numberOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50),
      child: Container(
        width: 120,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          shape: BoxShape.rectangle,
          border: Border.all(color: kTextLightColor),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: (() {
                setState(() {
                  numberOfItems = numberOfItems > 1 ? numberOfItems - 1 : 1;
                });
              }),
              icon: const Icon(
                Icons.remove,
                color: kTextLightColor,
                size: 15,
              ),
            ),
            Text(
              numberOfItems.toString().padLeft(2, '0'),
              style: const TextStyle(
                color: kTextColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            IconButton(
              onPressed: (() {
                setState(() {
                  numberOfItems = numberOfItems + 1;
                });
              }),
              icon: const Icon(
                Icons.add,
                color: kTextLightColor,
                size: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
