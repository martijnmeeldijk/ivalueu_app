import 'package:flutter/cupertino.dart';
import 'package:ivalueu_app/model/video.dart';
import 'package:ivalueu_app/screens/physical/video_list.dart';

/// The location selection for the physical tab
class PhysicalLocationSelection extends StatelessWidget {
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
                            builder: (context) => VideoList(location: Location.indoors, category: VideoCategory.physical,)
                        ),
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
                            builder: (context) => VideoList(location: Location.outdoors, category: VideoCategory.physical,)
                        ),
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
