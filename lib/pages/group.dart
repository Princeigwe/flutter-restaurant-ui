import 'package:flutter/material.dart';
import 'package:rstaurant_ui_app/widgets/groupappbar.dart';
import 'package:rstaurant_ui_app/widgets/grouplist.dart';

class Group extends StatefulWidget {
  @override
  _GroupState createState() => _GroupState();
}

class _GroupState extends State<Group> {
  void _home({BuildContext context, bool fullScreenDialog}) {
    Navigator.pop(
      context,
      MaterialPageRoute(builder: (context) => Group(), fullscreenDialog: fullScreenDialog)
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
          'Group of 3',
          style: TextStyle(
              color: Colors.brown.shade900,
              fontSize: 25.0,
              fontFamily: 'BalsamiqSans',
              fontWeight: FontWeight.bold),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          GroupAppbarWidget(), 
          GroupListWidget()
        ],
      ),
    );
  }
}