import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ivalueu_app/screens/more/bibliotherapy.dart';
import 'package:ivalueu_app/screens/more/organisations.dart';


/// This widget contains the More subpage.
///
/// More links can be added by copy/pasting the [GestureDetector]s
class More extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('More'),
      ),
      child: SafeArea(
          child: Material(
        child: ListView(
          children: ListTile.divideTiles(
              //          <-- ListTile.divideTiles
              context: context,
              tiles: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(builder: (context) => Bibliotherapy()),
                    );
                  },
                  child: ListTile(
                    title: Text('Bibliotherapy'),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(builder: (context) => Organisations()),
                    );
                  },
                  child: ListTile(
                    title: Text('Organisations'),
                  ),
                ),
              ]).toList(),
        ),
      )),
    );
  }
}
