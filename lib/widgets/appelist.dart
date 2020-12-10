import 'package:flutter/material.dart';

class AppetizerListWidget extends StatefulWidget {
  @override
  _AppetizerListWidgetState createState() => _AppetizerListWidgetState();
}

class _AppetizerListWidgetState extends State<AppetizerListWidget> {

  var _appetizerlistitem = [
    {
      'image': 'assets/images/burger.jpeg',
      'name': 'hamburger',
      'reviews': '110',
      'ratings': '4.0'
    },
    {
      'image': 'assets/images/sharwama.jpeg',
      'name': 'sharwama',
      'reviews': '104',
      'ratings': '3.9'
    },
    {
      'image': 'assets/images/lambrackwithpotatoes.jpeg',
      'name': 'lamb rack',
      'reviews': '92',
      'ratings': '3.5'
    },
    {
      'image': 'assets/images/susagerolls.jpeg',
      'name': 'susage rolls',
      'reviews': '95',
      'ratings': '3.0'
    },
    {
      'image': 'assets/images/pizza.jpeg',
      'name': 'pizza',
      'reviews': '195',
      'ratings': '4.5'
    },
    {
      'image': 'assets/images/icecreamsundae.jpeg',
      'name': 'sundae',
      'reviews': '108',
      'ratings': '4.0'
    },
    {
      'image': 'assets/images/chickenpie.jpeg',
      'name': 'chicken pie',
      'reviews': '95',
      'ratings': '5.0'
    },
    {
      'image': 'assets/images/coconutcandy.jpeg',
      'name': 'coconut candy',
      'reviews': '55',
      'ratings': '3.7'
    },
    {
      'image': 'assets/images/cupcake.jpeg',
      'name': 'cupcake',
      'reviews': '43',
      'ratings': '3.4'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(List.generate(9, (int index) {
        var appetizerlistitem = _appetizerlistitem[index];
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
                      image: AssetImage('${appetizerlistitem['image']}'),
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
                              '${appetizerlistitem['name']}',
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
                              '${appetizerlistitem['reviews']} reviews',
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
                            Text('${appetizerlistitem['ratings']}'),
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