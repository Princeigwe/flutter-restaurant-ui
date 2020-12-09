import 'package:flutter/material.dart';
import 'package:rstaurant_ui_app/pages/start_page.dart';

void _startpage({BuildContext context, bool fullScreenDialog = false}) {
  Navigator.push(
      context,
      MaterialPageRoute(
          fullscreenDialog: fullScreenDialog, builder: (context) => Start()));
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey = GlobalKey<FormState>();

  String _validateusername(String value) {
    return value.isEmpty ? 'Username Required' : null;
  }

  String _validatepassword(String value) {
    return value.isEmpty ? 'Password Required' : null;
  }

  void _submitOrder() {
    if (_formkey.currentState.validate()) {
      _formkey.currentState.save();
      _startpage(context: context, fullScreenDialog: true);
      // _loginpage(context: context, fullScreenDialog: true);
    }
  }

  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.yellow.shade600,
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            'Kuusine',
            style: TextStyle(color: Colors.brown.shade900, fontFamily: 'BalsamiqSans'),
          ),
          elevation: 0.0,
        ),
        body: SafeArea(
            child: Container(
          decoration: BoxDecoration(color: Colors.yellow.shade600),
          padding: EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),
          child: ListView(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                //width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(20.0, 150.0, 20.0, 0.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Form(
                          key: _formkey,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 0.0),
                            child: Column(
                              children: [
                                TextFormField(
                                  //autofocus: true,
                                  decoration: InputDecoration(
                                      hintText: 'Username',
                                      suffixIcon: Icon(
                                        Icons.account_circle_sharp,
                                        color: Colors.yellow.shade900,
                                      )),
                                  validator: (value) =>
                                      _validateusername(value),
                                  onSaved: (value) =>
                                      Loginpass().username = value,
                                ),
                                TextFormField(
                                  //autofocus: true,
                                  obscureText: _obscureText,
                                  decoration: InputDecoration(
                                      hintText: 'Password',
                                      suffixIcon: Icon(
                                        Icons.visibility_off,
                                        color: Colors.yellow.shade900,
                                      )),
                                  validator: (value) =>
                                      _validatepassword(value),
                                  onSaved: (value) =>
                                      Loginpass().password = value,
                                ),
                                Padding(padding: EdgeInsets.all(10.0)),
                                FlatButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0)),
                                    color: Colors.yellow.shade600,
                                    onPressed: () => _submitOrder(),
                                    padding: EdgeInsets.fromLTRB(
                                        40.0, 10.0, 40.0, 10.0),
                                    child: Text(
                                      'LOG IN',
                                      style: TextStyle(
                                          color: Colors.brown.shade900,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'BalsamiqSans'),
                                    ))
                              ],
                            ),
                          )),
                    ),
                    Padding(padding: EdgeInsets.all(20.0)),
                    Text('Login with'),
                    Padding(
                      padding: EdgeInsets.all(32.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ButtonTheme(
                                height: 50.0,
                                minWidth: 220.0,
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  onPressed: () {},
                                  color: Colors.blue.shade600,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image(
                                        image: AssetImage(
                                            'assets/images/Facebook.png'),
                                        height: 30.0,
                                        width: 20.0,
                                      ),
                                      Padding(padding: EdgeInsets.all(10.0)),
                                      Text(
                                        "Facebook",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'BalsamiqSans'),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(padding: EdgeInsets.all(15.0)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ButtonTheme(
                                height: 50.0,
                                minWidth: 220.0,
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  onPressed: () {},
                                  color: Colors.white,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image(
                                        image: AssetImage(
                                            'assets/images/google icon.png'),
                                        height: 30.0,
                                        width: 20.0,
                                      ),
                                      Padding(padding: EdgeInsets.all(10.0)),
                                      Text(
                                        "Gmail",
                                        style: TextStyle(
                                            color: Colors.red.shade500,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'BalsamiqSans'),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}

class Loginpass {
  String username;
  String password;
}
