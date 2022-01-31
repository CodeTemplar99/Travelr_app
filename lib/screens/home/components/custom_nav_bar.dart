// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travelr/constants.dart';
import 'package:travelr/screens/events/events_screen.dart';
import 'package:travelr/size_config.dart';

class NavItem extends StatelessWidget {
  const NavItem({
    Key? key,
    required this.icon,
    required this.title,
    this.isActive = false,
    required this.press,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final bool isActive;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(5),
        height: getProportionateScreenHeight(60),
        width: getProportionateScreenWidth(60),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isActive) KDefaultShadow],
        ),
        child: Column(
          children: [
            Icon(
              icon,
              size: 35,
              color: kTextColor,
            ),
            Spacer(),
            Text(
              title,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.normal,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EventScreen(),
                    ),
                  );
                },
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
    );
  }
}
