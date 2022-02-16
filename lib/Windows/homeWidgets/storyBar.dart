import 'package:flutter/material.dart';

class storyBar extends StatelessWidget {
  const storyBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          spacing: 10.0,
          children: [
            Container(
              height: 255,
              width: 150,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20)),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  GestureDetector(
                    onTap: () => print("Add Story Clicked"),
                    child: Column(
                      children: [
                        Container(
                          height: 170,
                          width: 150,
                          margin: EdgeInsets.only(bottom: 30.0),
                          child: const ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            child: Image(
                              image: AssetImage("images/user/avatar-1.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () => {},
                          child: const Text(
                            "Create story",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 50.0,
                    left: 45.0,
                    child: IconButton(
                      onPressed: () => {},
                      icon: const Icon(Icons.add_circle_rounded),
                      iconSize: 45.0,
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              width: 150,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  GestureDetector(
                    onTap: () => print("Friend story clicked"),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const Image(
                        image: AssetImage("images/user/avatar-3.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 10.0,
                    left: 10.0,
                    child: Text(
                      "Bella",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
