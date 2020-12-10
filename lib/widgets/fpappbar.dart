import 'package:flutter/material.dart';

class FamilyAppbarWidget extends StatefulWidget {
  @override
  _FamilyAppbarWidgetState createState() => _FamilyAppbarWidgetState();
}

class _FamilyAppbarWidgetState extends State<FamilyAppbarWidget> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.yellow.shade600,
      forceElevated: true,
      expandedHeight: 250.0,
      flexibleSpace: Image(
        image: AssetImage('assets/images/fufuandsoup.jpeg'),
        fit: BoxFit.cover,
      ),
    );
  }
}