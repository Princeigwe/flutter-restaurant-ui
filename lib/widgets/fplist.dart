import 'package:flutter/material.dart';

class FamilyListWidget extends StatefulWidget {
  @override
  _FamilyListWidgetState createState() => _FamilyListWidgetState();
}

class _FamilyListWidgetState extends State<FamilyListWidget> {

  var _familylistitem = [
    {
      'image': 'assets/images/ovenroastedchicken.jpeg',
      'name': 'roasted chicken',
      'reviews': '210',
      'ratings': '4.5'
    },
    {
      'image': 'assets/images/fufuandsoup.jpeg',
      'name': 'fufu with egusi',
      'reviews': '114',
      'ratings': '4.2'
    },
    {
      'image': 'assets/images/lambrackwithpotatoes.jpeg',
      'name': 'lamb rack',
      'reviews': '92',
      'ratings': '3.5'
    },
    {
      'image': 'assets/images/nkwobi.jpeg',
      'name': 'nkwobi',
      'reviews': '92',
      'ratings': '3.0'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(List.generate(4, (int index) {
        var familylistitem = _familylistitem[index];
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
                      image: AssetImage('${familylistitem['image']}'),
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
                              '${familylistitem['name']}',
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
                              '${familylistitem['reviews']} reviews',
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
                            Text('${familylistitem['ratings']}'),
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