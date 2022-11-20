import 'package:flutter/material.dart';
import 'package:shopping_flutter/constant.dart';

class SearchWithSettings extends StatelessWidget {
  const SearchWithSettings({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Container(
              padding: const EdgeInsets.only(left: 15),
              height: 53,
              width: size.width - 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: const TextField(
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.search,
                    color: kTextColor,
                  ),
                  hintText: 'Search',
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: kTextColor,
                ),
              ),
            ),
          ),
          Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: TextButton(
              onPressed: (() {}),
              child: Image.asset(
                'assets/icons/filter.png',
                width: 25,
                height: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
