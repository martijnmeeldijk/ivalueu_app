import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:ivalueu_app/model/video.dart';
import 'package:ivalueu_app/model/video_repository.dart';
import 'package:provider/provider.dart';

import 'emotional_row_item.dart';

class EmotionalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final groups = EmotionalGroupRepository.loadGroups();
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
