import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'mainPage.dart';
import 'gallery.dart';
import 'profile.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  final List<Map<String, dynamic>> _pages = [
    {'Pages': mainPage(), 'title': 'Home'},
    {'Pages': galleryScreen(), 'title': 'Gallery'},
    {'Pages': profilePage(), 'title': 'Profile'},
  ];
  int _SeletedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _SeletedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        // initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.orange),
            backgroundColor: Colors.indigoAccent,
            title: Text(
              _pages[_SeletedPageIndex]['title'],
              style: TextStyle(
                fontFamily: 'Lexend Deca',
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              CircleAvatar(
                radius: 20,
                backgroundImage:  NetworkImage('https://images.unsplash.com/photo-1611634780928-8e1f2e1b0b1c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
              )
            ],
            centerTitle: true,
            elevation: 0.0,
          ),
          // appBar: AppBar(
          //   backgroundColor: Colors.orange,

          //   title: Text(_pages[_SeletedPageIndex]['title']),
          // ),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                Container(
                  height: 120,
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.centerLeft,
                  color: Theme.of(context).accentColor,
                  child: Text(
                    'Winners Never Quit and Quitters Never Win',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                ListTile(
                  leading: Icon(Icons.person_outline),
                  title: Text('Alumini of NMIMS'),
                  onTap: () {
                   Navigator.pushNamed(context, '/alumini');
                  },
                ),
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                ListTile(
                  leading: Icon(Icons.feedback_outlined),
                  title: Text('Feedback/Suggestions'),
                  onTap: () {
                    Navigator.pushNamed(context, '/feedback');
                  
                  },
                ),
              ],
            ),
          ),
          body: _pages[_SeletedPageIndex]['Pages'],
          bottomNavigationBar: CurvedNavigationBar(
            index: 0,
            height: 60.0,
            items: <Widget>[
              Icon(Icons.home, size: 30),
              Icon(Icons.photo_album, size: 30),
              Icon(Icons.person, size: 30),
            ],
            color: Colors.indigoAccent,
            buttonBackgroundColor: Colors.orange,
            backgroundColor: Colors.indigo,
            animationCurve: Curves.easeInOutSine,
            animationDuration: Duration(milliseconds: 600),
            onTap: (index) {
              setState(() {
                _SeletedPageIndex = index;
              });
            },
          ),
        ));
  }
}
