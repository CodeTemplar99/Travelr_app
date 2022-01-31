// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travelr/components/travelers.dart';
import 'package:travelr/constants.dart';
import 'package:travelr/models/travel_spot.dart';
import 'package:travelr/size_config.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({
    Key? key,
    required this.travelSpot,
    required this.press,
  }) : super(key: key);

  final TravelSpot travelSpot;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(137),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.29,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                image: DecorationImage(
                  image: AssetImage(travelSpot.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            width: getProportionateScreenWidth(137),
            padding: EdgeInsets.all(
              getProportionateScreenWidth(kDefaultPadding),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              boxShadow: [KDefaultShadow],
            ),
            child: Column(
              children: [
                Text(
                  travelSpot.name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                VerticalSpacing(
                  of: 10,
                ),
                Travelers(
                  users: travelSpot.users
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
