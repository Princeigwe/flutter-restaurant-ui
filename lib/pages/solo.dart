import 'package:flutter/material.dart';
import 'package:rstaurant_ui_app/widgets/soloappbar.dart';
import 'package:rstaurant_ui_app/widgets/sololist.dart';

class Solo extends StatefulWidget {
  @override
  _SoloState createState() => _SoloState();
}

class _SoloState extends State<Solo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
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
        slivers: [
          SoloAppbarWidget(), 
          SoloListWidget()
      ],
      ),
    );
  }
}
