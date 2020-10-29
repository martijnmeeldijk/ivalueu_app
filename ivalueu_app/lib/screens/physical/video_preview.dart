import 'package:flutter/cupertino.dart';
import 'package:ivalueu_app/model/video.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/material.dart';

/// This widget displays the actual [Video] and is reused for each video
class VideoPreview extends StatelessWidget {
  const VideoPreview({this.video});
  final Video video;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: video.youtubeId,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
      ),
    );
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(video.name),
      ),
      child: SafeArea(
        child: Center(
            child: Column(
          children: [
                YoutubePlayer(
                  controller: _controller,
                  showVideoProgressIndicator: true,
                  liveUIColor: CupertinoColors.systemRed,
                  bottomActions: [
                    CurrentPosition(),
                    ProgressBar(isExpanded: true),

                  ],
              )
          ],
        )),
      ),
    );
  }
}
