import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ThirdScreen extends StatelessWidget {
  final String text;

  ThirdScreen({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Third screen')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: TextFormField(
            initialValue: text,
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}