import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ivalueu_app/screens/emotional/emotional_list.dart';
import 'package:ivalueu_app/screens/photo_diary/form_field.dart';
import 'package:ivalueu_app/model/photo_diary_repository.dart';
import 'package:ivalueu_app/screens/photo_diary/photo_diary_row_item.dart';

class PhotoDiary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var entries = PhotoDiaryRepository.loadEntries();
    return CustomScrollView(
      semanticChildCount: entries.length,
      slivers: <Widget>[
        CupertinoSliverNavigationBar(
          largeTitle: Text('Photo Diary'),
          trailing: GestureDetector(
            child: Icon(CupertinoIcons.plus),
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => TestForm()),
              );
            },
          ),
        ),
        SliverSafeArea(
          // BEGINNING OF NEW CONTENT
          top: false,
          minimum: const EdgeInsets.only(top: 8),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                if (index < entries.length) {
                  return PhotoDiaryRowItem(
                    index: index,
                    entry: entries[index],
                    lastItem: index == entries.length - 1,
                  );
                }

                return null;
              },
            ),
          ),
        )
      ],
    );
  }
}

// user defined function
