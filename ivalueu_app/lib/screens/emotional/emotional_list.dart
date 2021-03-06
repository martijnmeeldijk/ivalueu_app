import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:ivalueu_app/model/video.dart';
import 'package:ivalueu_app/model/video_repository.dart';

import 'emotional_row_item.dart';

/// This widget contains the list of groups of [Video]s from the emotional [VideoCategory]
class EmotionalList extends StatelessWidget {
  const EmotionalList({
    Key key,
    this.location
  }) : super(key: key);

  final Location location;

  @override
  Widget build(BuildContext context) {
    final groups = EmotionalGroupRepository.loadGroups(location);
    return CustomScrollView(
      semanticChildCount: groups.length,
      slivers: <Widget>[
        const CupertinoSliverNavigationBar(
          largeTitle: Text('Emotional Wellbeing'),
        ),
        SliverSafeArea(
          top: false,
          minimum: const EdgeInsets.only(top: 8),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                if (index < groups.length) {
                  return EmotionalRowItem(
                    index: index,
                    group: groups[index],
                    lastItem: index == groups.length - 1,
                    location: location,
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
