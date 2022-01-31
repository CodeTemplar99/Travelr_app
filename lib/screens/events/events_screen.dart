// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travelr/components/app_bar.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
    );
  }
}
