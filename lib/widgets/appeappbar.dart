import 'package:flutter/material.dart';

class AppetizerAppbarWidget extends StatefulWidget {
  @override
  _AppetizerAppbarWidgetState createState() => _AppetizerAppbarWidgetState();
}

class _AppetizerAppbarWidgetState extends State<AppetizerAppbarWidget> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.yellow.shade600,
      forceElevated: true,
      expandedHeight: 250.0,
      flexibleSpace: Image(
        image: AssetImage('assets/images/sharwama.jpeg'),
        fit: BoxFit.cover,
      ),
    );
  }
}