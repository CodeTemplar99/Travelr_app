// import 'package:flutter/material.dart';
import 'package:travelr/models/user.dart';

class TravelSpot {
  late final String name, image;
  late final DateTime date;
  late final List<User> users;

  TravelSpot({
    required this.users,
    required this.name,
    required this.image,
    required this.date,
  });
}

List<TravelSpot> travelSpots = [
  TravelSpot(
    users: users..shuffle(),
    name: "Lagos",
    image: "assets/images/Lagos.jpg",
    date: DateTime(2022, 1, 26),
  ),
  TravelSpot(
    users: users..shuffle(),
    name: "Abuja",
    image: "assets/images/Abuja.jpeg",
    date: DateTime(2022, 1, 26),
  ),
  TravelSpot(
    users: users..shuffle(),
    name: "Enugu",
    image: "assets/images/Enugu.jpeg",
    date: DateTime(2022, 1, 26),
  ),
];

List<User> users = [user1, user2, user3];
