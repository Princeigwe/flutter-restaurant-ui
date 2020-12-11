import 'package:flutter/material.dart';

class Seafoodefo extends StatefulWidget {
  @override
  _SeafoodefoState createState() => _SeafoodefoState();
}

class _SeafoodefoState extends State<Seafoodefo> {

  void _home({BuildContext context, bool fullScreenDialog}) {
    Navigator.pop(
      context,
      MaterialPageRoute(builder: (context) => Seafoodefo(), fullscreenDialog: fullScreenDialog)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => _home(context: context, fullScreenDialog: true)),
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
                            'Seafood Efo Riro',
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
                          image: AssetImage('assets/images/seafoodefo.jpeg'),
                        ),
                        Padding(padding: EdgeInsets.all(35.0),),
                        Text(
                          'The seafood eforiro features baby spinach, peeled prawn, cooked mackerel fillets and catfish.',
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