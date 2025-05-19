import 'package:flutter/material.dart';

class Category {
  final int categoryId;
  final String name;
  final IconData icon;

  const Category({
    required this.categoryId,
    required this.name,
    required this.icon,
  });
}

const allCategory = Category(
  categoryId: 0,
  name: "All",
  icon: Icons.search,
);

const musicCategory = Category(
  categoryId: 1,
  name: "Music",
  icon: Icons.music_note,
);

const meetUpCategory = Category(
  categoryId: 2,
  name: "Meetup",
  icon: Icons.location_on,
);

const golfCategory = Category(
  categoryId: 3,
  name: "Golf",
  icon: Icons.golf_course,
);

const birthdayCategory = Category(
  categoryId: 4,
  name: "Birthday",
  icon: Icons.cake,
);

const categories = [
  allCategory,
  musicCategory,
  meetUpCategory,
  golfCategory,
  birthdayCategory,
];
