import 'package:flutter/material.dart';
import 'package:rstaurant_ui_app/pages/solo.dart';
import 'package:rstaurant_ui_app/pages/start_page.dart';
import 'package:rstaurant_ui_app/pages/group.dart';
import 'package:rstaurant_ui_app/pages/familypack.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  var _foodheaders = [
    {
      'image': 'assets/images/ricewithmeat.jpeg',
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

  var _mostpopular = [
    {
      'image': 'assets/images/seafoodefo.jpeg',
      'text': 'Seafood Efo',
      'reviews': 112
    },
    {
      'image': 'assets/images/shrimpandvegsauce.jpeg',
      'text': 'Shrimp with Sauce',
      'reviews': 204
    },
    {
      'image': 'assets/images/fufuandsoup.jpeg',
      'text': 'Fufu with Egusi',
      'reviews': 169
    },
    {
      'image': 'assets/images/sharwama.jpeg',
      'text': 'Sharwama',
      'reviews': 216
    },
  ];

  var _bestrated = [
    {
      'image': 'assets/images/ricewithmeat.jpeg',
      'text': 'Jollof Rice',
      'reviews': 172
    },
    {
      'image': 'assets/images/peppersoup.jpeg',
      'text': 'Pepper Soup',
      'reviews': 234
    },
    {
      'image': 'assets/images/fufuandsoup.jpeg',
      'text': 'Fufu with Egusi',
      'reviews': 167
    },
    {
      'image': 'assets/images/sharwama.jpeg',
      'text': 'Sharwama',
      'reviews': 256
    },
  ];

  void _soloheader({BuildContext context, bool fullScreenDialog = false}) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Solo(), fullscreenDialog: fullScreenDialog));
  }

  void _groupof({BuildContext context, bool fullScreenDialog = false}) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Group(), fullscreenDialog: fullScreenDialog));
  }

  void _family({BuildContext context, bool fullScreenDialog}) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Family(),
            fullscreenDialog: fullScreenDialog));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.yellow.shade600,
        elevation: 2.0,
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
                        //  onTap: () => _soloheader(
                        //    context: context, fullScreenDialog: true
                        //  ),
                        onTap: () {
                          if (index == 0) {
                            _soloheader(
                                context: context, fullScreenDialog: true);
                          } else if (index == 1) {
                            _groupof(context: context, fullScreenDialog: true);
                          } else if (index == 2) {
                            _family(context: context, fullScreenDialog: true);
                          }
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Image(
                                  image: AssetImage('${foodheaders['image']}'),
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
                                  children: [
                                    Text(
                                      '${foodheaders['text']}',
                                      style: TextStyle(
                                          color: Colors.brown.shade900,
                                          fontSize: 20.0,
                                          fontFamily: 'BalsamiqSans',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      ' ${foodheaders['reviews']} reviews',
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic),
                                    )
                                  ]),
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
                  Padding(
                    padding: EdgeInsets.fromLTRB(30.0, 30.0, 1.0, 9.0),
                    child: Text(
                      'Most Popular',
                      style: TextStyle(
                          color: Colors.brown.shade900,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          fontFamily: 'BalsamiqSans'),
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
                    var mostpopular = _mostpopular[index];
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
                                Image(
                                  image: AssetImage('${mostpopular['image']}'),
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
                                  children: [
                                    Text(
                                      '${mostpopular['text']}',
                                      style: TextStyle(
                                          color: Colors.brown.shade900,
                                          fontSize: 20.0,
                                          fontFamily: 'BalsamiqSans',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      ' ${mostpopular['reviews']} reviews',
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic),
                                    )
                                  ]),
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
                  Padding(
                    padding: EdgeInsets.fromLTRB(30.0, 30.0, 1.0, 9.0),
                    child: Text(
                      'Best Rated',
                      style: TextStyle(
                          color: Colors.brown.shade900,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          fontFamily: 'BalsamiqSans'),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, index) {
                    var bestrated = _bestrated[index];
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
                                Image(
                                  image: AssetImage('${bestrated['image']}'),
                                  fit: BoxFit.fitWidth,
                                  height: 210,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.fromLTRB(9.0, 3.0, 3.0, 3.0),
                                  child: Text(
                                    '${bestrated['text']} ',
                                    style: TextStyle(
                                        color: Colors.yellow.shade600,
                                        fontSize: 25.0,
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'BalsamiqSans'),
                                  ),
                                )
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
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home_filled),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.location_on_outlined),
              onPressed: () {},
            ),
            Divider(),
            IconButton(
              icon: Icon(Icons.favorite_border_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.account_box_outlined),
              onPressed: () {},
            ),
          ],
        ),
        color: Colors.yellow.shade600,
        shape: CircularNotchedRectangle(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.search_outlined),
      ),
    );
  }
}
