// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travelr/components/place_card.dart';
import 'package:travelr/components/section_title.dart';
import 'package:travelr/models/travel_spot.dart';

class PopularPlaces extends StatelessWidget {
  const PopularPlaces({
    Key? key,
    required this.travelSpot,
    required this.press,
  }) : super(key: key);

  final TravelSpot travelSpot;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Be Right There At a Spark",
          press: () {},
        ),
        PlaceCard(),
      ],
    );
  }
}
