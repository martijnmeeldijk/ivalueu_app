import 'package:flutter/cupertino.dart';
import 'package:ivalueu_app/screens/physical/location_selection_physical.dart';

/// The homepage for the physical tab
class Physical extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('IValueU'),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        CupertinoPageRoute(builder: (context) => PhysicalLocationSelection()),
                      );
                    },
                      child: Image.asset('assets/images/MapleLeafLarge.png')),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        CupertinoPageRoute(builder: (context) => PhysicalLocationSelection()),
                      );
                    },
                    child: Container(
                      width: 240.0,
                      height: 42.0,
                      decoration: BoxDecoration(
                        color: CupertinoColors.systemGrey4,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                          BoxShadow(
                              color: CupertinoColors.black.withOpacity(0.1),
                              spreadRadius: 4,
                              blurRadius: 10),
                        ]
                      ),
                      child: Center(
                        child: Text(
                          'Physical Wellbeing',
                          style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 18,
                            color: CupertinoColors.activeBlue,
                            height: 1,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40),
                    child: SizedBox(
                      width: 240,
                      child: Text(
                          "Follow the HITT and Yoga Tutorials created by the pupils for you to follow and help improve your wellbeing."),
                    ),
                  )
                ],
          )),
        ),
      ),
    );
  }
}
