// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travelr/components/search_field.dart';
import 'package:travelr/size_config.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
        Positioned(
          bottom: getProportionateScreenWidth(-25),
          child: SearchField(),
        )
      ],
    );
  }
}
