import 'package:flutter/material.dart';

class homeMenuBar extends StatelessWidget {
  const homeMenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(
          onPressed: () => {},
          child: Row(
            children: [
              const Icon(
                Icons.post_add_outlined,
                color: Colors.blueAccent,
              ),
              Text(
                "Text",
                style: TextStyle(fontSize: 18, color: Colors.grey[800]),
              )
            ],
          ),
        ),
        Container(
          height: 40,
          child: const VerticalDivider(
            color: Colors.black26,
          ),
        ),
        TextButton(
          onPressed: () => {},
          child: Row(
            children: [
              const Icon(
                Icons.video_call,
                color: Colors.redAccent,
              ),
              Text(
                "Live Video",
                style: TextStyle(fontSize: 18, color: Colors.grey[800]),
              )
            ],
          ),
        ),
        Container(
          height: 40,
          child: const VerticalDivider(
            color: Colors.black26,
          ),
        ),
        TextButton(
          onPressed: () => {},
          child: Row(
            children: [
              const Icon(
                Icons.location_on,
                color: Colors.red,
              ),
              Text(
                "Location",
                style: TextStyle(fontSize: 18, color: Colors.grey[800]),
              )
            ],
          ),
        ),
      ],
    );
  }
}
