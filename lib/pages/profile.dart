import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

void _home({BuildContext context, bool fullScreenDialog}) {
    Navigator.pop(
      context,
      MaterialPageRoute(builder: (context) => Profile(), fullscreenDialog: fullScreenDialog)
    );
  }

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: ()=>_home(context: context, fullScreenDialog: true),
        ),
        backgroundColor: Colors.yellow.shade600,
        elevation: 2.0,
        title: Text(
          'Profile',
          style: TextStyle(
              color: Colors.brown.shade900,
              fontSize: 25.0,
              fontFamily: 'BalsamiqSans',
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('assets/images/LivingFire.jpeg'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Prince',
                    style: TextStyle(
                      color: Colors.brown.shade900,
                      fontSize: 25.0,
                      fontFamily: 'BalsamiqSans',
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                  )
                ],
              ),
              ListTile(
                leading: Icon(Icons.account_box_outlined, size: 30.0, color: Colors.black,),
                title: Text(
                  'Name',
                  style: TextStyle(
                    color: Colors.brown.shade900,
                    fontSize: 15.0,
                    fontFamily: 'BalsamiqSans',
                    fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Prince Igwe',
                ),
                trailing: Icon(Icons.more_vert),
              ),
              ListTile(
                leading: Icon(Icons.phone_android_outlined, size: 30.0, color: Colors.black,),
                title: Text(
                  'Mobile',
                  style: TextStyle(
                    color: Colors.brown.shade900,
                    fontSize: 15.0,
                    fontFamily: 'BalsamiqSans',
                    fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  '+2349058114264',
                ),
                trailing: Icon(Icons.more_vert),
              ),
              ListTile(
                leading: Icon(Icons.email_outlined, size: 30.0, color: Colors.black,),
                title: Text(
                  'Email',
                  style: TextStyle(
                    color: Colors.brown.shade900,
                    fontSize: 15.0,
                    fontFamily: 'BalsamiqSans',
                    fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Igwep297@gmail.com',
                ),
                trailing: Icon(Icons.more_vert),
              ),
              ListTile(
                leading: Icon(Icons.location_on_outlined, size: 30.0, color: Colors.black,),
                title: Text(
                  'Address',
                  style: TextStyle(
                    color: Colors.brown.shade900,
                    fontSize: 15.0,
                    fontFamily: 'BalsamiqSans',
                    fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Nigeria',
                ),
                trailing: Icon(Icons.more_vert),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home_outlined),
              onPressed: () {
                Navigator.pop(context);
              },
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
              icon: Icon(Icons.account_circle_rounded),
              onPressed: () {},
            ),
          ],
        ),
        color: Colors.white,
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
