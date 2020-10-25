import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:ivalueu_app/model/video.dart';
import 'package:ivalueu_app/screens/physical/video_list.dart';

class Physical extends StatelessWidget {
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
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      CupertinoPageRoute(builder: (context) => VideoList(category: VideoCategory.physical)),
                    );
                  },
                    child: Image.asset('assets/images/MapleLeafLarge.png')),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      CupertinoPageRoute(builder: (context) => VideoList(category: VideoCategory.physical)),
                    );
                  },
                  child: Container(
                    width: 240.0,
                    height: 42.0,
                    decoration: BoxDecoration(
                      color: CupertinoColors.systemGrey4,
                    ),
                    child: Center(
                      child: Text(
                        'Physical Wellbeing',
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
                ),
              ],
        )),
      ),
    );
  }
}
