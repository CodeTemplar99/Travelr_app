import 'package:flutter/material.dart';
import 'package:travelr/constants.dart';
import 'package:travelr/screens/home_screen.dart';

import '../size_config.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
    required this.press,
  }) : super(key: key);

  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        color: Colors.white,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(kDefaultPadding)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NavItem(
                  icon: Icons.calendar_today,
                  title: "Events",
                  press: () {},
                ),
                NavItem(
                  icon: Icons.message,
                  title: "Chat",
                  press: () {},
                ),
                NavItem(
                  icon: Icons.contacts,
                  title: "Friends",
                  press: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}