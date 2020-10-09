import 'package:flutter/material.dart';
import 'home.dart';
import 'physical/physical.dart';
import 'emotional/emotional.dart';
import 'photo_diary/photo_diary.dart';
import 'more/more.dart';


void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyTabBar(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyTabBar extends StatefulWidget {
  @override
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar>  with TickerProviderStateMixin {
  int tabIndex=0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: tabIndex ==0 ?Home()
              :tabIndex == 1? Physical()
              :tabIndex == 2? Emotional()
              :tabIndex == 3? PhotoDiary()
              :More()


      ),

      bottomNavigationBar: BottomNavigationBar(

        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,

        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/IValueU Grey maple leaf.png", width: 75,),
              activeIcon: Image.asset("assets/images/IValueU Blue maple leaf.png", width: 75,),
              title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/Physical Grey maple leaf.png", width: 75,),
            activeIcon: Image.asset("assets/images/Physical Blue maple leaf.png", width: 75,),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/Emotional Grey maple leaf.png", width: 75,),
            activeIcon: Image.asset("assets/images/Emotional Blue maple leaf.png", width: 75,),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/Photo Diary Grey maple leaf.png", width: 75,),
            activeIcon: Image.asset("assets/images/Photo Diary Blue maple leaf.png", width: 75,),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/More Grey maple leaf.png", width: 75,),
            activeIcon: Image.asset("assets/images/More Blue maple leaf.png", width: 75,),
            title: Text(''),
          ),



        ],
        currentIndex: tabIndex,
        //selectedItemColor: Colors.blueAccent,
        onTap: (int index){
          setState(() {
            tabIndex = index;
          });
        },
      ),
    );
  }

}







