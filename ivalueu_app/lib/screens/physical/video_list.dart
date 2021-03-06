import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:ivalueu_app/model/video.dart';
import 'package:ivalueu_app/model/video_repository.dart';
import 'video_row_item.dart';

/// This widget contains a list of [Video]s which are taken from the [VideosRepository].
///
/// This component is reused for both physical and emotional menus
class VideoList extends StatelessWidget {
  const VideoList({
    Key key,
    this.category,
    this.location
  }) : super(key: key);

  final VideoCategory category;
  final Location location;
  @override
  Widget build(BuildContext context) {
    final videos = VideosRepository.loadVideos(category, location);
    return CustomScrollView(
      semanticChildCount: videos.length,
      slivers: <Widget>[
        const CupertinoSliverNavigationBar(
          largeTitle: Text('Videos'),
        ),
        SliverSafeArea(
          top: false,
          minimum: const EdgeInsets.only(top: 8),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                if (index < videos.length) {
                  return VideoRowItem(
                    index: index,
                    video: videos[index],
                    lastItem: index == videos.length - 1,
                  );
                }

                return null;
              },
            ),
          ),
        ) // END OF NEW CONTENT
      ],
    );
  }
}
