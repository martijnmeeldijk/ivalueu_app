import 'package:flutter/cupertino.dart';
import 'package:ivalueu_app/screens/emotional/location_selection_emotional.dart';

class Emotional extends StatelessWidget {
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
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(builder: (context) => EmotionalLocationSelection()),
                    );
                  },
                  child: Image.asset('assets/images/MapleLeafLarge.png')),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => EmotionalLocationSelection()),
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
                      ]),
                  child: Center(
                    child: Text(
                      'Emotional Wellbeing',
                      style: TextStyle(
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
                      "Use the Emotional Wellbeing self help tools including Mediation Animation made by the pupils with Sean Harris"),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}

// user defined function
