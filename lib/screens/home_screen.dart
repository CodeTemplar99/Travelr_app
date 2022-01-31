// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:travelr/components/body.dart';
import 'package:travelr/components/custom_nav_bar.dart';
import 'package:travelr/components/drawer.dart';
import 'package:travelr/constants.dart';
import 'package:travelr/size_config.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  HomeScreen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        key: _key,
        extendBodyBehindAppBar: true,
        appBar: buildAppBar(context),
        drawer: NavDrawer(),
        body: Body(),
        bottomNavigationBar: CustomNavBar(
          press: () {},
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: kIconColor,
        ),
        onPressed: () => {_key.currentState?.openDrawer()},
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: IconButton(
              onPressed: () {},
              icon: ClipOval(
                child: Icon(
                  Icons.account_circle_outlined,
                  size: 35.0,
                  color: kIconColor,
                ),
              )),
        )
      ],
    );
  }
}

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
    return Container(
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
    );
  }
}
