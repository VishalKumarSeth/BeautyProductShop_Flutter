import 'package:flutter/material.dart';
import 'package:shopping_flutter/cart_screen/cart_details.dart';
import 'package:shopping_flutter/constant.dart';
import 'package:shopping_flutter/details_screen/components/cart_counter.dart';
import 'package:shopping_flutter/details_screen/details_screen.dart';

class PriceWithCartCAndCounter extends StatelessWidget {
  const PriceWithCartCAndCounter({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final DetailsScreen widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '\$${widget.product.price}',
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        CartCounter(),
        Container(
          // cart button
          width: 70,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: kTextColor,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 5,
                  color: kTextLightColor,
                )
              ]),
          child: TextButton(
            onPressed: (() {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return CartDetails(product: widget.product);
              })));
            }),
            child: const Text(
              'Cart',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
