import 'package:flutter/material.dart';
import 'package:rstaurant_ui_app/pages/signupwelcome.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _opensignupwelcome(
      {BuildContext context, bool fullScreenDialog = false}) {
    Navigator.push(
        context,
        MaterialPageRoute(
            fullscreenDialog: fullScreenDialog,
            builder: (context) => SignUpWelcome()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        
        image: DecorationImage(
          image: AssetImage('assets/images/Fbvert.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 20.0, 35.0, 2.0),
                  child: Text(
                    "Kuusine",
                    style: TextStyle(
                        color: Colors.yellow.shade900,
                        fontSize: 45.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'BalsamiqSans'),
                  ),
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(230, 600, 20, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      onPressed: () => _opensignupwelcome(
                          context: context, fullScreenDialog: true),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      color: Colors.yellow.shade900,
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
