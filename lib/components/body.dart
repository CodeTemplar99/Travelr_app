// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:travelr/components/home_header.dart';
import 'package:travelr/components/popular_places.dart';
import 'package:travelr/components/top_travellers.dart';
import 'package:travelr/models/user.dart';
// import 'package:travelr/models/travel_spot.dart';s
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
            PopularPlaces(),
            VerticalSpacing(),

            // VerticalSpacing(
            //   of: 20,
            // ),
            TopTravellers(),
            VerticalSpacing()
          ],
        ));
  }
}

class UserCard extends StatelessWidget {
  const UserCard({
    Key? key,
    required this.user,
  }) : super(key: key);
  final User user;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: Image.asset(
            user.image,
            height: getProportionateScreenHeight(55),
            width: getProportionateScreenWidth(55),
            fit: BoxFit.cover,
          ),
        ),
        VerticalSpacing(
          of: 10,
        ),
        Text(
          user.name,
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
