import 'package:flutter/material.dart';
class Emotional extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('I Value U'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
          child: Column(
            children: [
              Image.asset('assets/images/MapleLeafLarge.png'),
              Container(
                width: 240.0,
                height: 42.0,
                decoration: BoxDecoration(
                  color: Colors.black12,
                ),
                child: Center(
                  child: Text(
                    'Emotional Wellbeing',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 18,
                      color: Colors.black,
                      height: 1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}
