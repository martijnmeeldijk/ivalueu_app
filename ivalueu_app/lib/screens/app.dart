import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'home.dart';
import 'physical/physical.dart';
import 'emotional/emotional.dart';
import 'photo_diary/photo_diary.dart';
import 'more/more.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();

}

/// This is the stateful widget that the main application instantiates.

class _MyHomePageState extends State<MyHomePage> {

  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {

    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(

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
      ),

      tabBuilder: (context, index) {
        CupertinoTabView returnValue;
        switch (index) {
          case 0:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: Home(),
              );
            });
            break;
          case 1:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: Physical(),
              );
            });
            break;
          case 2:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: Emotional(),
              );
            });
            break;
          case 3:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: PhotoDiary(),
              );
            });
            break;
          case 4:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: More(),
              );
            });
            break;
        }
        return returnValue;
      },
    );

  }

}



