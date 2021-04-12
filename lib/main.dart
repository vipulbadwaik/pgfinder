import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:pgfinder/Screen/AddPage.dart';
import 'package:pgfinder/Screen/FavPage.dart';
import 'package:pgfinder/Screen/HomePage.dart';
import 'package:pgfinder/Screen/ProfilePage.dart';


void main() {
  runApp(Pgfinder());
}

class Pgfinder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

       home: Home1(),
       debugShowCheckedModeBanner: false,


    );
  }
}



class Home1 extends StatefulWidget {
  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home1> {

  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
      HomePage(),
      AddPage(),
      FavPage(),
      ProfilePage(),

  ];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PGFINDER"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedIndex,
        color: Colors.black,
        backgroundColor: Colors.white,
        height: 55,
        animationCurve: Curves.ease,
        animationDuration: Duration(milliseconds: 750),
    items: <Widget>[
      
      Icon(Icons.home, size: 30,color: Colors.blue,),
      Icon(Icons.add, size: 30,color: Colors.yellow,), 
     Icon(Icons.favorite,size: 30,color: Colors.pink,), 
      Icon(Icons.face, size: 30,color: Colors.green,),
    ],

    onTap: _onItemTapped,
    

    

      ),
    );
  }
}
