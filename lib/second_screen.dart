import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SecondScreen extends StatelessWidget {
  final String text;

  SecondScreen({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second screen')),
      body: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}