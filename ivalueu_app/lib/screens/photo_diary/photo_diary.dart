import 'package:flutter/cupertino.dart';
import 'package:ivalueu_app/screens/emotional/emotional_list.dart';
import 'package:ivalueu_app/screens/photo_diary/form_field.dart';



class PhotoDiary extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: const Text('Photo Diary'),
          trailing: GestureDetector(
            child: Text("+"),
            onTap: (){
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => TestForm()),
              );
            },
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(70),
          child: SafeArea(
            
            child: Center(child: Column(children: [


            ])),
          ),
        ));
  }

}

// user defined function
