import 'dart:ui';

import 'package:flutter/material.dart';

class PostFeed extends StatelessWidget {
  const PostFeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                iconSize: 50,
                onPressed: () => {},
                icon: CircleAvatar(
                  radius: 80.0,
                  backgroundImage: AssetImage("images/user/avatar-1.jpg"),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Manyu Dhyani",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Wrap(
                      spacing: 10.0,
                      children: [
                        Text(
                          "12 min ago",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        Icon(Icons.public),
                      ],
                    )
                  ],
                ),
              ),
              IconButton(
                iconSize: 30,
                onPressed: () => {},
                icon: Icon(Icons.more_horiz_outlined),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "This is title",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
                Image(image: AssetImage("images/post/gallery-1.jpg"))
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () => {},
                    icon: Icon(Icons.thumb_up_alt_outlined),
                  ),
                  Text(
                    "12",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () => {},
                    icon: Icon(Icons.message_outlined),
                  ),
                  Text(
                    "20",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () => {},
                    icon: Icon(Icons.share_outlined),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
