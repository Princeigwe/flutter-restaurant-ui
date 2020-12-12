import 'package:flutter/material.dart';
import 'package:rstaurant_ui_app/pages/profile.dart';
import 'package:rstaurant_ui_app/pages/start_page.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  void _profile({BuildContext context, bool fullScreenDialog = false}) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Profile(),
            fullscreenDialog: fullScreenDialog));
  }

  void _home({BuildContext context, bool fullScreenDialog}) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context)=>Start(), fullscreenDialog: fullScreenDialog)
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        automaticallyImplyLeading: false,
        title: Text(
          "Search",
          style: TextStyle(color: Colors.black),
        ),
        //centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
              //  padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[300],
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Material(
                  color: Colors.grey[300],
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.search, color: Colors.grey),
                      Expanded(
                        child: TextField(
                          style: TextStyle(height: 1.0),
                          // textAlign: TextAlign.center,
                          decoration: InputDecoration.collapsed(
                            hintText: ' Search your food',
                          ),
                          onChanged: (value) {},
                        ),
                      ),
                      InkWell(
                        child: Icon(
                          Icons.mic,
                          color: Colors.grey,
                        ),
                        onTap: () {},
                      )
                    ],
                  ),
                ),
              )),
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home_outlined),
              onPressed: ()=>_home(context: context, fullScreenDialog: true),
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
              icon: Icon(Icons.account_circle_outlined),
              onPressed: ()=>_profile(context: context, fullScreenDialog: true),
            ),
          ],
        ),
        color: Colors.white,
        shape: CircularNotchedRectangle(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        //onPressed: ()=> _searchpage(context: context, fullScreenDialog: true),
        onPressed: (){},
        child: Icon(Icons.search_rounded),
      ),
    );
  }
}
