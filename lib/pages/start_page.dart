import 'package:flutter/material.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  var _foodheaders = [
    {
      'image': 'assets/images/foodbackground.jpeg',
      'text': 'Solo',
      'reviews': 172
    },
    {
      'image': 'assets/images/peppersoup.jpeg',
      'text': 'Class of 3',
      'reviews': 234
    },
    {
      'image': 'assets/images/fufuandsoup.jpeg',
      'text': 'Family Pack',
      'reviews': 167
    },
    {
      'image': 'assets/images/sharwama.jpeg',
      'text': 'Appetizers',
      'reviews': 256
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.yellow.shade900,
          elevation: 0.0,
          title: Text(
            'Kuusine',
            style: TextStyle(
                color: Colors.brown.shade900,
                fontSize: 25.0,
                fontFamily: 'BalsamiqSans',
                fontWeight: FontWeight.bold),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            //physics
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                ),
                SizedBox(
                  height: 300,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, index) {
                      var foodheaders = _foodheaders[index];
                      return Card(
                        // for giving smooth curves around card
                        clipBehavior: Clip.antiAlias,
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Image(image: AssetImage('${foodheaders['image']}'),
                                  fit: BoxFit.fitWidth,
                                  height: 200,
                                  ),
                                ],
                              ),
                              Padding(
                                    padding: EdgeInsets.fromLTRB(10.0, 3.0, 5.0, 5.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children:[
                                        Text(
                                        '${foodheaders['text']}',
                                        style: TextStyle(
                                          color: Colors.brown.shade900,
                                          fontSize: 20.0,
                                          fontFamily: 'BalsamiqSans',
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      Text(
                                        ' ${foodheaders['reviews']} reviews',
                                        style: TextStyle(
                                          fontStyle: FontStyle.italic
                                        ),
                                      )
                                      ] 
                                    ),
                                  )
                            ],
                          ),
                        ),
                        color: Colors.grey.shade100,
                        elevation: 3.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        margin: EdgeInsets.all(10.0),
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(30.0,20.0,1.0,9.0),
                    child: Text(
                      'Most Popular',
                      style: TextStyle(
                        color: Colors.brown.shade900,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        fontFamily: 'BalsamiqSans'
                      ),
                    ),
                    )
                  ],
                ),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, index) {
                      var foodheaders = _foodheaders[index];
                      return Card(
                        // for giving smooth curves around card
                        clipBehavior: Clip.antiAlias,
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Image(image: AssetImage('${foodheaders['image']}'),
                                  fit: BoxFit.fitWidth,
                                  height: 150,
                                  ),
                                ],
                              ),
                              Padding(
                                    padding: EdgeInsets.fromLTRB(10.0, 3.0, 5.0, 5.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children:[
                                        Text(
                                        '${foodheaders['text']}',
                                        style: TextStyle(
                                          color: Colors.brown.shade900,
                                          fontSize: 20.0,
                                          fontFamily: 'BalsamiqSans',
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      Text(
                                        ' ${foodheaders['reviews']} reviews',
                                        style: TextStyle(
                                          fontStyle: FontStyle.italic
                                        ),
                                      )
                                      ] 
                                    ),
                                  )
                            ],
                          ),
                        ),
                        color: Colors.grey.shade100,
                        elevation: 3.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        margin: EdgeInsets.all(10.0),
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(30.0,20.0,1.0,9.0),
                    child: Text(
                      'Best Rated',
                      style: TextStyle(
                        color: Colors.brown.shade900,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        fontFamily: 'BalsamiqSans'
                      ),
                    ),
                    )
                  ],
                ),
                SizedBox(
                  height: 230,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, index) {
                      var foodheaders = _foodheaders[index];
                      return Card(
                        
                        // for giving smooth curves around card
                        clipBehavior: Clip.antiAlias,
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Image(image: AssetImage('${foodheaders['image']}'),
                                  fit: BoxFit.fitWidth,
                                  height: 210,
                                  
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        color: Colors.grey.shade100,
                        elevation: 3.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        margin: EdgeInsets.all(10.0),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
