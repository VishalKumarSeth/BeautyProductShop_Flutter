import 'package:flutter/material.dart';
import 'package:shopping_flutter/constant.dart';
import 'package:shopping_flutter/home/components/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: buildAppBar(),
      body: HomeBody(size: size),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      title: const Text(
        'Search Product',
        style: TextStyle(
          fontSize: 20,
          color: kTextColor,
          fontWeight: FontWeight.w500,
        ),
      ),
      leading: IconButton(
        onPressed: (() {}),
        icon: const Icon(
          Icons.arrow_back_ios,
          color: kTextColor,
        ),
      ),
      actions: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: kTextLightColor,
          ),
          margin: const EdgeInsets.all(5),
          child: Center(
            child: IconButton(
              onPressed: (() {}),
              icon: const Icon(
                Icons.person,
                size: 30,
                color: kTextColor,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
      ],
    );
  }
}
