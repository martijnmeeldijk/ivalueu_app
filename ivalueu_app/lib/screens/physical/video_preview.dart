import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:ivalueu_app/model/video.dart';
import 'package:ivalueu_app/screens/physical/video_list.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPreview extends StatelessWidget {
  const VideoPreview({
    this.video
  });
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

                ),


              ],
            )),
      ),
    );
  }
}
