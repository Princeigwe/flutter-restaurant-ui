
import 'package:flutter/material.dart';
import 'package:rstaurant_ui_app/pages/bole.dart';

class GroupListWidget extends StatefulWidget {
  @override
  _GroupListWidgetState createState() => _GroupListWidgetState();
}

class _GroupListWidgetState extends State<GroupListWidget> {
  var _grouplistitem = [
    {
      'image': 'assets/images/ovenroastedfish.jpeg',
      'name': 'oven roasted fish',
      'reviews': '132',
      'ratings': '3.9'
    },
    {
      'image': 'assets/images/eforiro.jpeg',
      'name': 'eforiro',
      'reviews': '114',
      'ratings': '4.2'
    },
    {
      'image': 'assets/images/boleandfish.jpeg',
      'name': 'bole',
      'reviews': '292',
      'ratings': '4.8'
    },
    {
      'image': 'assets/images/seafoodefo.jpeg',
      'name': 'sea food eforiro',
      'reviews': '92',
      'ratings': '3.5'
    },
    {
      'image': 'assets/images/peppersoup.jpeg',
      'name': 'pepper soup',
      'reviews': '122',
      'ratings': '3.5'
    },
  ];
  void _bolepage({BuildContext context, bool fullScreenDialog}) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Bole(), fullscreenDialog: fullScreenDialog));
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(List.generate(5, (int index) {
        var grouplistitem = _grouplistitem[index];
        return Card(
          color: Colors.grey.shade100,
          elevation: 3.0,
          //shadowColor: Colors.yellow.shade600,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          margin: EdgeInsets.all(16.0),
          child: Container(
            height: 200.0,
            child: InkWell(
              onTap: () {
                if (index == 2) {
                  _bolepage(context: context, fullScreenDialog: true);
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    height: 350.0,
                    padding: EdgeInsets.all(16.0),
                    child: Image(
                      image: AssetImage('${grouplistitem['image']}'),
                      width: 150.0,
                      fit: BoxFit.fitHeight,
                      //height: 150.0,
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '${grouplistitem['name']}',
                              style: TextStyle(
                                  color: Colors.brown.shade900,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  fontFamily: 'BalsamiqSans',
                                  fontStyle: FontStyle.italic),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '${grouplistitem['reviews']} reviews',
                              style: TextStyle(
                                  color: Colors.yellow.shade700,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.0,
                                  fontFamily: 'BalsamiqSans',
                                  fontStyle: FontStyle.italic),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('${grouplistitem['ratings']}'),
                            Icon(
                              Icons.star_border_outlined,
                              color: Colors.yellow.shade600,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      })),
    );
  }
}
