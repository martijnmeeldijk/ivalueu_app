import 'package:flutter/cupertino.dart';
import 'package:ivalueu_app/screens/emotional/meditation_animation.dart';
import 'package:ivalueu_app/screens/physical/video_list.dart';

import 'package:ivalueu_app/model/video.dart';
import 'package:ivalueu_app/Styles.dart';

/// This widget is rendered for each item in the list of emotional [Video] groups.
class EmotionalRowItem extends StatelessWidget {
  const EmotionalRowItem(
      {this.index, this.group, this.lastItem, this.location});

  final EmotionalGroup group;
  final int index;
  final bool lastItem;
  final Location location;

  @override
  Widget build(BuildContext context) {
    final row = SafeArea(
      top: false,
      bottom: false,
      minimum: const EdgeInsets.only(
        left: 16,
        top: 8,
        bottom: 8,
        right: 8,
      ),
      child: GestureDetector(
        onTap: () {
          if (group.category == VideoCategory.meditation) {
            Navigator.push(
              context,
              CupertinoPageRoute(builder: (context) => MeditationAnimation()),
            );
          } else
            Navigator.push(
              context,
              CupertinoPageRoute(
                  builder: (context) => VideoList(
                        category: group.category,
                        location: location,
                      )),
            );
        },
        child: SizedBox(
          height: 110,
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.asset(
                  group.iconAsset,
                  fit: BoxFit.cover,
                  width: 76,
                  height: 76,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        group.name,
                        style: Styles.VideoRowItemName,
                      ),
                      const Padding(padding: EdgeInsets.only(top: 8)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
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
        ),
      ],
    );
  }
}
