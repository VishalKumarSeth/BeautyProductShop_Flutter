import 'package:flutter/material.dart';
import 'package:shopping_flutter/constant.dart';

class DetailsSquareIcon extends StatelessWidget {
  const DetailsSquareIcon({
    Key? key,
    required this.title,
    required this.imageName,
  }) : super(key: key);

  final String title;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            color: kTextLightColor,
            blurRadius: 0.6,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imageName,
            width: 70,
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: kDefaultPadding / 2.5),
            child: Text(
              title,
              style: const TextStyle(
                color: kTextLightColor,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
