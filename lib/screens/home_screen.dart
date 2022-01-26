// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travelr/components/body.dart';
import 'package:travelr/constants.dart';
import 'package:travelr/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: buildAppBar(),
        body: Body(),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: kIconColor,
        ),
        onPressed: () {},
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
