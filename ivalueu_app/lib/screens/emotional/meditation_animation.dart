import 'package:flutter/cupertino.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/material.dart';

/// The meditation animation page
class MeditationAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: "KB6CYtpNNEc",
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
      ),
    );
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Meditation Animation"),
      ),
      child: SafeArea(
        child: Center(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                height: 200,
                child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Text(
                        "Preserved in the muddy estuaries of South-east wales are the footprints of cranes; large, raucous wetland birds who made these trails around 7,000 years ago when the Bristol Channel was a marshland connecting Wales to Somerset.Cranes became extinct in Wales around five hundred years ago as a result of habitat loss (the wetlands were drained) and hunting. In other words, as a result of human action.The cranes in this short animation were animated in four primary schools – in celebration of the return of the crane to Wales; a miracle enabled by a combination of science and community action.  This shows that when we choose to, we can and do make a positive difference.The soundtrack features cranes and some other amazing birds that haven’t returned, amongst then the White Tailed Eagle, Dalmatian pelican and Great Northern Diver.  Also the bittern which, like the crane, came back only more surreptitiously…Do we, as humans, have the sole right to decide which species survive or disappear?")),
              ),
            ),
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
