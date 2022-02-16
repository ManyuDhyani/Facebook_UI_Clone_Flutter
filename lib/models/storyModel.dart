import 'package:flutter/cupertino.dart';

class StoryModel {
  late final VoidCallback onTap;
  late final String image;
  late final String userName;

  StoryModel({
    required this.onTap,
    required this.image,
    required this.userName,
  });
}

List<StoryModel> storyData = [
  StoryModel(
    userName: "Bella",
    onTap: () => print("Bella Story Clicked"),
    image: "images/user/avatar-3.jpg",
  ),
  StoryModel(
    userName: "Tom",
    onTap: () => print("Tom Story Clicked"),
    image: "images/user/avatar-2.jpg",
  ),
  StoryModel(
    userName: "John",
    onTap: () => print("John Story Clicked"),
    image: "images/user/avatar-1.jpg",
  ),
];
