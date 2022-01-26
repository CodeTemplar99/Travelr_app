// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travelr/constants.dart';
import 'package:travelr/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            ClipRRect(
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                child: Image.asset(
                  "assets/images/Airline.jpeg",
                  height: getProportionateScreenWidth(315),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: getProportionateScreenHeight(80),
                  ),
                  Text(
                    'Travelr',
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(83),
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 0.5,
                    ),
                  ),
                  Text(
                    'Travel Community App',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: getProportionateScreenWidth(-25),
              child: Container(
                width: getProportionateScreenWidth(313),
                height: getProportionateScreenHeight(50),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Color(0xFF3E4067),
                  ),
                  boxShadow: [KDefaultShadow],
                ),
                child: TextField(
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
                      vertical:
                          getProportionateScreenHeight(kDefaultPadding / 2),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
