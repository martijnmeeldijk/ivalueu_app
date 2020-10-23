import 'package:flutter/cupertino.dart';
class EmotionalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var list = ["one", "two", "three", "four"];
    return CupertinoPageScaffold(

      child: Center(
          child: Column(
            children: [
              getTextWidgets(list)


            ],
          )
      ),
    );
  }
}

Widget getTextWidgets(List<String> strings)
{
  List<Widget> list = new List<Widget>();
  for(var i = 0; i < strings.length; i++){
    list.add(new Text(strings[i]));
  }
  return new Row(children: list);
}