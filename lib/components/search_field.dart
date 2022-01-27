// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:travelr/constants.dart';
import 'package:travelr/size_config.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(313),
      height: getProportionateScreenHeight(50),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Color(0xFF3E4067),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(3, 3),
            blurRadius: 10,
            color: Colors.black.withOpacity(0.1),
            spreadRadius: -2,
          )
        ],
      ),
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
          hintText: "Search a destination...",
          hintStyle: TextStyle(
            fontSize: getProportionateScreenWidth(12),
            color: Color(0xFF464A7E),
            height: 3.0,
          ),
          suffixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(kDefaultPadding),
            vertical: getProportionateScreenHeight(kDefaultPadding / 2),
          ),
        ),
      ),
    );
  }
}
