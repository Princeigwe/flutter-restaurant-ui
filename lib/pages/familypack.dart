import 'package:flutter/material.dart';

class Family extends StatefulWidget {
  @override
  _FamilyState createState() => _FamilyState();
}

class _FamilyState extends State<Family> {
  void _home({BuildContext context, bool fullScreenDialog}) {
    Navigator.pop(
      context,
      MaterialPageRoute(builder: (context) => Family(), fullscreenDialog: fullScreenDialog)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => _home(context: context, fullScreenDialog: true),
          icon: Icon(Icons.arrow_back),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.yellow.shade600,
        elevation: 0.0,
        title: Text(
          'Family Pack',
          style: TextStyle(
              color: Colors.brown.shade900,
              fontSize: 25.0,
              fontFamily: 'BalsamiqSans',
              fontWeight: FontWeight.bold),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          //GroupAppbarWidget(), 
          //GroupListWidget()
        ],
      ),
    );
  }
}