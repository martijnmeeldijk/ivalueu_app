import 'package:custom_navigator/custom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'app.dart';

void main() => runApp(MyApp());

GlobalKey<NavigatorState> mainNavigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return CupertinoApp(
      home: MyHomePage(),
    );
  }
}





