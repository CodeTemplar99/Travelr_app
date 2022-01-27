// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:travelr/components/home_header.dart';
import 'package:travelr/components/popular_places.dart';
import 'package:travelr/models/travel_spot.dart';
import 'package:travelr/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      child: Column(
        children: [
          HomeHeader(),
          VerticalSpacing(),
          PopularPlaces(
            travelSpot: travelSpots[1],
            press: () {},
          )
        ],
      ),
    );
  }
}
