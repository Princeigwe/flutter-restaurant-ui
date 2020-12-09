import 'package:flutter/material.dart';

class SoloListWidget extends StatefulWidget {
  @override
  _SoloListWidgetState createState() => _SoloListWidgetState();
}

class _SoloListWidgetState extends State<SoloListWidget> {
  var _sololistitem = [
    {
      'image': 'assets/images/beefstew.jpeg',
      'name': 'beefstew',
      'reviews': '102',
      'ratings': '3.2'
    },
    {
      'image': 'assets/images/okpa.jpeg',
      'name': 'okpa',
      'reviews': '124',
      'ratings': '4.2'
    },
    {
      'image': 'assets/images/eforiro.jpeg',
      'name': 'eforiro',
      'reviews': '102',
      'ratings': '3.9'
    },
    {
      'image': 'assets/images/ricewithmeat.jpeg',
      'name': 'jollof rice',
      'reviews': '102',
      'ratings': '3.2'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(List.generate(4, (int index) {
        var sololistitem = _sololistitem[index];
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
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    height: 350.0,
                    padding: EdgeInsets.all(16.0),
                    child: Image(
                      image: AssetImage('${sololistitem['image']}'),
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
                              '${sololistitem['name']}',
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
                              '${sololistitem['reviews']} reviews',
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
                            Text('${sololistitem['ratings']}'),
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
