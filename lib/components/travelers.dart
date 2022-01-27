// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travelr/constants.dart';
import 'package:travelr/models/travel_spot.dart';

import '../size_config.dart';

class Travelers extends StatelessWidget {
  const Travelers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int totalUser = 0;
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(30),
      child: Stack(
        children: [
          ...List.generate(travelSpots[0].users.length, (index) {
            totalUser++;
            return Positioned(
              left: (22 * index).toDouble(),
              child: buildTravelersFace(index),
            );
          }),
          Positioned(
            left: (22 * totalUser).toDouble(),
            child: SizedBox(
              height: getProportionateScreenHeight(28),
              width: getProportionateScreenWidth(28),
              child: TextButton(
                onPressed: () {},
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  primary: Colors.white,
                  backgroundColor: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  ClipOval buildTravelersFace(int index) {
    return ClipOval(
      child: Image.asset(
        travelSpots[0].users[index].image,
        height: getProportionateScreenHeight(28),
        width: getProportionateScreenWidth(28),
        fit: BoxFit.cover,
      ),
    );
  }
}
