// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
            child: DrawerHeader(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Travelr App',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      backgroundColor: Colors.black.withOpacity(0.6)),
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.teal,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/lone_road.jpg'),
                  )),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              size: 30,
            ),
            title: Text(
              'Welcome',
              style: TextStyle(fontSize: 14),
            ),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(
              Icons.account_circle,
              size: 30,
            ),
            title: Text(
              'Profile',
              style: TextStyle(fontSize: 14),
            ),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              size: 30,
            ),
            title: Text(
              'Settings',
              style: TextStyle(fontSize: 14),
            ),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(
              Icons.message,
              size: 30,
            ),
            title: Text(
              'Feedback',
              style: TextStyle(fontSize: 14),
            ),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              size: 30,
            ),
            title: Text(
              'Logout',
              style: TextStyle(fontSize: 14),
            ),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
