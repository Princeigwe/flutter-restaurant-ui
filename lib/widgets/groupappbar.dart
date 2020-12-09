import 'package:flutter/material.dart';

class GroupAppbarWidget extends StatefulWidget {
  @override
  _GroupAppbarWidgetState createState() => _GroupAppbarWidgetState();
}

class _GroupAppbarWidgetState extends State<GroupAppbarWidget> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.yellow.shade600,
      forceElevated: true,
      expandedHeight: 250.0,
      flexibleSpace: Image(
        image: AssetImage('assets/images/peppersoup.jpeg'),
        fit: BoxFit.cover,
      ),
    );
  }
}