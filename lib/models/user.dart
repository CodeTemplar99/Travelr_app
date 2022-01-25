import 'package:flutter/material.dart';
import 'package:travelr/models/travel_spot.dart';

class User {
  final String name, image;

  User({
    required this.name,
    required this.image,
  });
}

List<User> topTravelers = [user1, user2, user3];

User user1 = User(name: "Martins", image: "");
User user2 = User(name: "Koso", image: "");
User user3 = User(name: "Grace", image: "");
User user4 = User(name: "Ade", image: "");
