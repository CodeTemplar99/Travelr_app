// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:travelr/screens/home/components/body.dart';
import 'package:travelr/components/drawer.dart';
import 'package:travelr/constants.dart';
import 'package:travelr/screens/home/components/custom_nav_bar.dart';
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
        bottomNavigationBar: CustomNavBar(),
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
