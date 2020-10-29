import 'package:flutter/cupertino.dart';
import 'package:ivalueu_app/model/video.dart';
import 'package:ivalueu_app/screens/emotional/emotional_list.dart';

/// This widget displays the indoor/outdoor selection screen
class EmotionalLocationSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Select location'),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Center(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30),
                child: Text("Can you perform indoor or outdoor activities?"),
              ),
              CupertinoButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => EmotionalList(
                              location: Location.indoors,
                            )),
                  );
                },
                child: Text(
                  'Indoors',
                  style: TextStyle(
                    color: CupertinoColors.activeBlue,
                  ),
                ),
              ),
              CupertinoButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => EmotionalList(
                              location: Location.outdoors,
                            )),
                  );
                },
                child: Text(
                  'Outdoors',
                  style: TextStyle(
                    color: CupertinoColors.activeBlue,
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
