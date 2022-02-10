import 'package:facebook_ui_clone_flutter/Windows/homeWidgets/homeMenuBar.dart';
import 'package:facebook_ui_clone_flutter/Windows/homeWidgets/postBar.dart';
import 'package:flutter/material.dart';

class homeDetail extends StatefulWidget {
  homeDetail({Key? key}) : super(key: key);

  @override
  State<homeDetail> createState() => _homeDetailState();
}

class _homeDetailState extends State<homeDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0),
      child: ListView(
        children: [
          postBar(),
          const Divider(thickness: 1, color: Colors.black12),
          homeMenuBar(),
          const Divider(thickness: 1, color: Colors.black12),
        ],
      ),
    );
  }
}
