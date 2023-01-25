import 'package:flutter/material.dart';
import 'second_screen.dart';
import 'third_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First screen')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: TextField(
              controller: textFieldController,
              style: TextStyle(fontSize: 24),
            ),
          ),

          ElevatedButton(
            child: const Text(
              'Go to second screen',
              style: TextStyle(fontSize: 24),
            ),
            onPressed: () {
              _sendDataToSecondScreen(context);
            },
          ),

          ElevatedButton(
            child: const Text(
              'Go to third screen',
              style: TextStyle(fontSize: 24),
            ),
            onPressed: () {
              _sendDataToThirdScreen(context);
            },
          )
        ],
      ),
    );
  }

  void _sendDataToSecondScreen(BuildContext context) {
    String textToSend = textFieldController.text;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SecondScreen(text: textToSend,),
      )
    );
  }

  void _sendDataToThirdScreen(BuildContext context) {
    String textToSend = textFieldController.text;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ThirdScreen(text: textToSend,),
      )
    );
  }
}