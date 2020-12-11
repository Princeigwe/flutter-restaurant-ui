import 'package:flutter/material.dart';

class Bole extends StatefulWidget {
  @override
  _BoleState createState() => _BoleState();
}

class _BoleState extends State<Bole> {

  void _group({BuildContext context, bool fullScreenDialog}) {
    Navigator.pop(
      context,
      MaterialPageRoute(builder: (context) => Bole(), fullscreenDialog: fullScreenDialog)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => _group(context: context, fullScreenDialog: true)),
        backgroundColor: Colors.white10,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Padding(
                padding: EdgeInsets.all(45.0),
                child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 120.0,
                          child: Text(
                            'Bole',
                            style: TextStyle(
                              color: Colors.brown.shade900,
                              fontSize: 30.0,
                              fontStyle: FontStyle.italic,
                              fontFamily: 'BalsamiqSans',
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        Image(
                          image: AssetImage('assets/images/boleandfish.jpeg'),
                        ),
                        Padding(padding: EdgeInsets.all(35.0),),
                        Text(
                          'The bole pack features roasted ripe plantains, mackerel fishes with sauce.',
                          style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, letterSpacing: 1.5),
                        )
                      ],
                    ),
                  ),
                  width: 400,
                  height: 600,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.yellow.shade600,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 7,
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        offset: Offset(0,4)
                      )
                    ]
                    ),
                    padding: EdgeInsets.all(35.0),
                  ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    padding: EdgeInsets.all(10.0),
                    splashColor: Colors.yellow.shade600,
                    elevation: 5.0,
                    color: Colors.grey.shade300,
                    onPressed: (){},
                    child: Text(
                      'order',
                      style: TextStyle(
                        color: Colors.brown.shade900,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'BalsamiqSans'
                      ),
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                  )
                ],
              )
              
            ], 
          ),
        ),
      ),
    );
  }
}