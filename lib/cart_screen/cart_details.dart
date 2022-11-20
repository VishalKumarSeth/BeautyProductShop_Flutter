import 'package:flutter/material.dart';
import 'package:shopping_flutter/cart_screen/components/create_bottom_price.dart';
import 'package:shopping_flutter/constant.dart';
import 'package:shopping_flutter/models/products.dart';

class CartDetails extends StatefulWidget {
  final Product product;
  const CartDetails({super.key, required this.product});

  @override
  State<CartDetails> createState() => _CartDetailsState();
}

class _CartDetailsState extends State<CartDetails> {
  int totalItems = 6;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(context),
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 3 * 120,
              child: _createListView(),
            ),
            Stack(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  margin: const EdgeInsets.all(kDefaultPadding),
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(
                        right: kDefaultPadding * 3.5, top: kDefaultPadding / 4),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Promo Code',
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: kTextColor,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print('Promo apply clicked');
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: size.width * 0.65, top: 30),
                    height: 40.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: kTextColor,
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: const Center(
                      child: Text(
                        'Apply',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const CreateBottomPriceRow(
              title: 'Subtotal',
              price: 222.99,
              showTotalItemText: false,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: SizedBox(
                height: 2,
                child: Container(
                  color: Colors.white,
                ),
              ),
            ),
            const CreateBottomPriceRow(
              title: 'Shipping',
              price: 4.99,
              showTotalItemText: false,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: SizedBox(
                height: 2,
                child: Container(
                  color: Colors.white,
                ),
              ),
            ),
            const CreateBottomPriceRow(
              title: 'Bag Total',
              price: 222.99,
              showTotalItemText: true,
            ),
            GestureDetector(
              onTap: () {
                print('Proceed to checkout tapped');
              },
              child: Container(
                margin: const EdgeInsets.only(top: kDefaultPadding * 2),
                height: 60.0,
                width: size.width - 50,
                decoration: BoxDecoration(
                  color: kTextColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text(
                    'Proceed To Checkout',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListView _createListView() {
    return ListView.builder(
      itemCount: 3,
      itemExtent: 120,
      itemBuilder: ((context, index) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 25, right: 25, bottom: 10),
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Image.asset(
                  widget.product.image,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.product.title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: kTextColor,
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    TextButton(
                      onPressed: (() {}),
                      child: const Icon(
                        Icons.close,
                        size: 15,
                        color: kTextColor,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${widget.product.size} ML',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: kTextLightColor,
                      ),
                    ),
                  ],
                ),
                Row(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '\$${widget.product.price}',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: kTextColor,
                      ),
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    _buildCounter(),
                  ],
                ),
              ],
            ),
          ],
        );
      }),
    );
  }

  Row _buildCounter() {
    return Row(
      children: [
        _buildCircularButton(
            iconData: Icons.remove,
            press: (() {}),
            color: kTextColor,
            bgcolor: kBackgroundColor),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            '01',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        _buildCircularButton(
          iconData: Icons.add,
          press: (() {}),
          color: Colors.white,
          bgcolor: kTextColor,
        )
      ],
    );
  }

  SizedBox _buildCircularButton(
      {required IconData iconData,
      required VoidCallback press,
      required Color color,
      required Color bgcolor}) {
    return SizedBox(
      height: 30.0,
      width: 30.0,
      child: OutlinedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(2),
          backgroundColor: MaterialStateProperty.all(bgcolor),
          padding: MaterialStateProperty.all(EdgeInsets.zero),
          shape: MaterialStateProperty.all(
            const CircleBorder(),
          ),
        ),
        onPressed: press,
        child: Icon(
          iconData,
          color: color,
          size: 20,
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text(
        'Shopping Bag',
        style: TextStyle(
          color: kTextColor,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
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
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 18, top: 8),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: TextButton(
                onPressed: (() {}),
                child: const Icon(
                  Icons.shopping_bag,
                  color: kTextColor,
                  size: 27,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 30, bottom: 30),
              width: 20.0,
              height: 20.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: kTextColor,
                  boxShadow: const [
                    BoxShadow(
                      color: kTextLightColor,
                      blurRadius: 1,
                    )
                  ]),
              child: Center(
                child: Text(
                  '$totalItems',
                  style: const TextStyle(fontSize: 12),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
