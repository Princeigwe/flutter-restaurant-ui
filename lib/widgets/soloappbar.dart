import 'package:flutter/material.dart';

class SoloAppbarWidget extends StatefulWidget {
  @override
  _SoloAppbarWidgetState createState() => _SoloAppbarWidgetState();
}

class _SoloAppbarWidgetState extends State<SoloAppbarWidget> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.yellow.shade600,
      forceElevated: true,
      expandedHeight: 250.0,
      flexibleSpace: Image(
        image: AssetImage('assets/images/ricewithmeat.jpeg'),
        fit: BoxFit.cover,
      ),
    );
  }
}