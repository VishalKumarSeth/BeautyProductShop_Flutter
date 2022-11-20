import 'package:flutter/material.dart';
import 'package:shopping_flutter/constant.dart';
import 'package:shopping_flutter/models/products.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback press;
  const ProductCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 1.5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              product.image,
            ),
            Padding(
              padding: const EdgeInsets.only(top: kDefaultPadding / 2),
              child: Text(
                product.title,
                style: const TextStyle(
                  fontSize: 14.0,
                  color: kTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding / 3),
              child: Text(
                product.description,
                style: const TextStyle(
                  fontSize: 13.0,
                  color: kTextLightColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '\$${product.price}',
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  padding: const EdgeInsets.all(7),
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10.0,
                        color: kTextLightColor,
                      ),
                    ],
                    shape: BoxShape.circle,
                    color: kTextColor,
                  ),
                  child: Image.asset(
                    'assets/icons/wishlist.png',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
