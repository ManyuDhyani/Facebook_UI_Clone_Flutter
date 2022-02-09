import 'package:flutter/material.dart';

class postBar extends StatefulWidget {
  postBar({Key? key}) : super(key: key);

  @override
  State<postBar> createState() => _postBarState();
}

class _postBarState extends State<postBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          iconSize: 50,
          onPressed: () => print("User clicked Avatar"),
          icon: const CircleAvatar(
            radius: 80.0,
            backgroundImage: AssetImage('images/user/avatar-1.jpg'),
          ),
        ),
        TextButton(
          onPressed: () => {},
          child: Text(
            "What's on your mind?",
            style: TextStyle(fontSize: 18, color: Colors.grey[600]),
          ),
        ),
        Container(
          height: 60,
          child: const VerticalDivider(
            color: Colors.black26,
          ),
        ),
        Column(
          children: [
            IconButton(
              onPressed: () => print("Photo Clicked"),
              icon: Icon(Icons.photo_album_outlined),
            ),
            Text("Photo")
          ],
        )
      ],
    );
  }
}
