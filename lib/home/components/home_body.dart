import 'package:flutter/material.dart';
import 'package:shopping_flutter/constant.dart';
import 'package:shopping_flutter/details_screen/details_screen.dart';
import 'package:shopping_flutter/home/components/product_item_card.dart';
import 'package:shopping_flutter/home/components/search_with_settings.dart';
import 'package:shopping_flutter/models/products.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchWithSettings(size: size), // Search bar with settings
        Expanded(
          //Grid for product
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 30,
                crossAxisSpacing: 30,
                childAspectRatio: 0.5,
              ),
              itemBuilder: ((context, index) {
                return ProductCard(
                  product: products[index],
                  press: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) {
                          return DetailsScreen(product: products[index]);
                        }),
                      ),
                    );
                  }),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
