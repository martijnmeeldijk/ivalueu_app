import 'package:flutter/cupertino.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('IValueU'),
      ),
      child: SafeArea(
        child: Center(
            child: Column(
          children: [
            Image.asset('assets/images/MapleLeafLarge.png'),
            Container(
              width: 240.0,
              height: 42.0,
              decoration: BoxDecoration(
                color: CupertinoColors.systemGrey4,
              ),
              child: Center(
                child: Text(
                  'Wellbeing IValueU',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 18,
                    color: CupertinoColors.black,
                    height: 1,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
