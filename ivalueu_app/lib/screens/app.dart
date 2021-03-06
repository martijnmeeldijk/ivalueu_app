import 'package:flutter/cupertino.dart';
import 'home/home.dart';
import 'physical/physical.dart';
import 'emotional/emotional.dart';
import 'photo_diary/photo_diary.dart';
import 'more/more.dart';

/// This widget contains the navigation of the app.
///
/// All other widgets are children of this widget.
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {

  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {

    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        iconSize: 200,
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/IValueU Grey maple leaf.png"),
            activeIcon: Image.asset("assets/images/IValueU Blue maple leaf.png"),
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/Physical Grey maple leaf.png"),
            activeIcon: Image.asset("assets/images/Physical Blue maple leaf.png"),
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/Emotional Grey maple leaf.png"),
            activeIcon: Image.asset("assets/images/Emotional Blue maple leaf.png"),
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/Photo Diary Grey maple leaf.png"),
            activeIcon: Image.asset("assets/images/Photo Diary Blue maple leaf.png"),
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/More Grey maple leaf.png"),
            activeIcon: Image.asset("assets/images/More Blue maple leaf.png"),
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



