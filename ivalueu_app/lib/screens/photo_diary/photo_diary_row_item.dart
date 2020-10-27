import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:ivalueu_app/Styles.dart';
import 'package:ivalueu_app/model/photo_diary_entry.dart';
import 'package:provider/provider.dart';


class PhotoDiaryRowItem extends StatelessWidget {
  PhotoDiaryRowItem({
    this.index,
    this.entry,
    this.lastItem,
  });

  final PhotoDiaryEntry entry;
  final int index;
  final bool lastItem;

  @override
  Widget build(BuildContext context) {
    File image;
    image = entry.image;

    Widget imageDisplay;
    if(entry.image != null){
      imageDisplay = Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            color: CupertinoColors.systemGrey,
            shape: BoxShape.circle,
            image: DecorationImage(
                image: ResizeImage(FileImage(image), width: 200))),
      );

    }
    else{
      imageDisplay = Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            color: CupertinoColors.systemGrey,
            shape: BoxShape.circle,

      ));
    }
    final row = SafeArea(
      top: false,
      bottom: false,
      minimum: const EdgeInsets.only(
        left: 16,
        top: 8,
        bottom: 8,
        right: 8,
      ),
      child: Row(
        children: <Widget>[
          Container(
            child: imageDisplay,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    entry.title,
                    style: Styles.VideoRowItemName,
                  ),
                  const Padding(padding: EdgeInsets.only(top: 8)),
                  Text(
                    '${entry.description}',
                    style: Styles.VideoRowItemPrice,
                  )
                ],
              ),
            ),
          ),

        ],
      ),
    );

    if (lastItem) {
      return row;
    }

    return Column(
      children: <Widget>[
        row,
        Padding(
          padding: const EdgeInsets.only(
            left: 100,
            right: 16,
          ),
          child: Container(
            height: 1,
            color: Styles.VideoRowDivider,
          ),
        ),
      ],
    );
  }
}