import 'package:flutter/material.dart';
import 'package:rstaurant_ui_app/pages/login.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  void _loginpage({BuildContext context, bool fullScreenDialog = false}) {
    Navigator.push(
        context,
        MaterialPageRoute(
            fullscreenDialog: fullScreenDialog, builder: (context) => Login()));
  }

  final _formKey = GlobalKey<FormState>();

  String _validateemail(String value) {
    return value.isEmpty ? 'Email Required' : null;
  }

  String _validateusername(String value) {
    return value.isEmpty ? 'Username Required' : null;
  }

  String _validatepassword(String value) {
    return value.isEmpty ? 'Password Required' : null;
  }

  String _validateconfirmpassword(String value) {
    return value.isEmpty ? 'Confirm Password' : null;
  }

  void _submitOrder() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      _loginpage(context: context, fullScreenDialog: true);
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
          backgroundColor: Colors.yellow.shade900,
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            'Kuusine',
            style: TextStyle(color: Colors.white, fontFamily: 'BalsamiqSans'),
          ),
          elevation: 0.0,
        ),
        body: SafeArea(
            child: Container(
                decoration: BoxDecoration(color: Colors.yellow.shade900),
                padding: EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),
                child: ListView(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.fromLTRB(20.0, 90.0, 20.0, 0.0),
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
                                key: _formKey,
                                child: Padding(
                                  padding:
                                      EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 0.0),
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        //autofocus: true,
                                        decoration: InputDecoration(
                                            hintText: 'Email Address',
                                            suffixIcon: Icon(
                                              Icons.email_rounded,
                                              color: Colors.yellow.shade900,
                                            )),
                                        validator: (value) =>
                                            _validateemail(value),
                                        onSaved: (value) =>
                                            Signup().email = value,
                                      ),
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
                                            Signup().username = value,
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
                                            Signup().password = value,
                                      ),
                                      TextFormField(
                                        //autofocus: true,
                                        obscureText: _obscureText,
                                        decoration: InputDecoration(
                                            hintText: 'Confirm Password',
                                            suffixIcon: Icon(
                                              Icons.visibility_off,
                                              color: Colors.yellow.shade900,
                                            )),
                                        validator: (value) =>
                                            _validateconfirmpassword(value),
                                        onSaved: (value) =>
                                            Signup().confirmpassword = value,
                                      ),
                                      new FlatButton(
                                          //button is linked to toggle function
                                          onPressed: () => _toggle(),
                                          child: new Text(
                                            _obscureText ? "Show" : "Hide",
                                            style: TextStyle(
                                                color: Colors.blueGrey),
                                          )),
                                      Padding(padding: EdgeInsets.all(0.0)),
                                      FlatButton(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0)),
                                          color: Colors.yellow.shade900,
                                          onPressed: () => _submitOrder(),
                                          padding: EdgeInsets.fromLTRB(
                                              40.0, 10.0, 40.0, 10.0),
                                          child: Text(
                                            'SIGN UP',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'BalsamiqSans'),
                                          )
                                      )
                                    ],
                                  ),
                                )
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(20.0)),
                    Text('Sign up with'),
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
                                minWidth:220.0,
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)
                                  ),
                                  onPressed: (){}, 
                                  color: Colors.blue.shade600,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image(image: AssetImage('assets/images/Facebook.png'), height: 30.0, width: 20.0,),
                                      Padding(padding: EdgeInsets.all(10.0)),
                                      Text(
                                        "Facebook",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'BalsamiqSans'
                                        ),
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
                                minWidth:220.0,
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)
                                  ),
                                  onPressed: (){}, 
                                  color: Colors.white,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image(image: AssetImage('assets/images/google icon.png'), height: 30.0, width: 20.0,),
                                      Padding(padding: EdgeInsets.all(10.0)),
                                      Text(
                                        "Gmail",
                                        style: TextStyle(
                                          color: Colors.red.shade500,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'BalsamiqSans'
                                        ),
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
                )
            )
        )
    );
  }
}

class Signup {
  String email;
  String username;
  String password;
  String confirmpassword;
}
