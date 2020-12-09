import 'package:flutter/material.dart';

class Solo extends StatefulWidget {
  @override
  _SoloState createState() => _SoloState();
}

class _SoloState extends State<Solo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.yellow.shade600,
        elevation: 0.0,
        title: Text(
          'Solo',
          style: TextStyle(
                color: Colors.brown.shade900,
                fontSize: 25.0,
                fontFamily: 'BalsamiqSans',
                fontWeight: FontWeight.bold),
        ),
      ),
      body: CustomScrollView(
        slivers: [],
      ),
    );
  }
}