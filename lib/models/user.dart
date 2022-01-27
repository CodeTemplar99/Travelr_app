class User {
  final String name, image;

  User({
    required this.name,
    required this.image,
  });
}

List<User> topTravelers = [user1, user2, user3];

User user1 = User(name: "Martins", image: "assets/images/user1.jpg");
User user2 = User(name: "Koso", image: "assets/images/user2.jpg");
User user3 = User(name: "Grace", image: "assets/images/user3.jpg");
User user4 = User(name: "Ade", image: "assets/images/user4.jpg");
