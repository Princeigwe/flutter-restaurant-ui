import 'package:flutter/material.dart';
import 'package:rstaurant_ui_app/pages/signup.dart';

class SignUpWelcome extends StatefulWidget {
  @override
  _SignUpWelcomeState createState() => _SignUpWelcomeState();
}

class _SignUpWelcomeState extends State<SignUpWelcome> {
  void _signup({BuildContext context, bool fullScreenDialog = false}) {
    Navigator.push(
      context,
      MaterialPageRoute(
        fullscreenDialog: fullScreenDialog,
        builder: (context) => SignUp()
      )
    );
  }

  void _login() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/beefstew.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(15.0, 50.0, 10.0, 3.0),
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'BalsamiqSans'),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(5.0, 120.0, 35.0, 2.0),
                  child: Text(
                    'Eat what you love...',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.grey.shade200,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'BalsamiqSans'),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 200.0, 20.0, 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () => _signup(
                          context: context, fullScreenDialog: true
                        ),
                        padding: EdgeInsets.fromLTRB(95.0, 20.0, 95.0, 20.0),
                        color: Colors.yellow.shade900,
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                              color: Colors.grey.shade100,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'BalsamiqSans'),
                        ))
                  ],
                ),
                Padding(padding: EdgeInsets.fromLTRB(20.0, 100.0, 20.0, 10.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(5.0, 20.0, 5.0, 10.0),
                      child: Text(
                        'By signing up, you agree to Terms of Use and Policy',
                        style: TextStyle(color: Colors.grey.shade400),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
