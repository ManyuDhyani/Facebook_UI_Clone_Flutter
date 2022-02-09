import 'package:flutter/material.dart';

class messageDetail extends StatefulWidget {
  messageDetail({Key? key}) : super(key: key);

  @override
  State<messageDetail> createState() => _messageDetailState();
}

class _messageDetailState extends State<messageDetail> {
  @override
  Widget build(BuildContext context) {
    return Text('Messages');
  }
}
