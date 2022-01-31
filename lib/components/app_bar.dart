// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travelr/constants.dart';

AppBar buildAppBar({bool isTransparent = false}) {
  return AppBar(
    backgroundColor: isTransparent ? Colors.transparent : Colors.white,
    title: Text(
      "New Events",
      style: TextStyle(
        color: kTextColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    elevation: 0,
    leading: IconButton(
      icon: Icon(
        Icons.menu,
        color: kIconColor,
      ),
      onPressed: () => {},
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
