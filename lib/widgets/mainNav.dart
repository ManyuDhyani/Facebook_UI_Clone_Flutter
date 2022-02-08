import 'package:flutter/material.dart';

class NavMain extends StatefulWidget {
  NavMain({Key? key}) : super(key: key);

  @override
  State<NavMain> createState() => _NavMainState();
}

class _NavMainState extends State<NavMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'facebook',
          style: TextStyle(
            fontFamily: 'Klavika',
            fontSize: 34,
            color: Colors.blue[700],
          ),
        ),
        actions: [
          Container(
            child: IconButton(
              icon: const Icon(Icons.search),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () {
                print("Search button is pressed");
              },
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[300],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            child: IconButton(
              icon: const Icon(Icons.menu),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () {
                print("Menu button is pressed");
              },
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[300],
            ),
          )
        ],
      ),
    );
  }
}
