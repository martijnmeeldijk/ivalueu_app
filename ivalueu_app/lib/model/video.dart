import 'package:flutter/foundation.dart';
import 'package:ivalueu_app/model/video_repository.dart';

/// Category of the videos
enum VideoCategory {
  physical,
  emotional1,
  emotional2,
  emotional3,
  emotional4,
  meditation
}

/// Location of the videos
enum Location {
  indoors,
  outdoors
}

/// This class groups the sets of videos used in the emotional menu
class EmotionalGroup{
  const EmotionalGroup({
    @required this.name,
    @required this.category,
    @required this.icon
});
  /// Name of the grouping, has type [String]
  final String name;
  /// Category of the group of [Video]s this is later used to get the right set from the [VideosRepository]
  final VideoCategory category;
  /// [String] name of the asset used for displaying the group
  final String icon;

  /// Returns a [String] which contains the path to the asset for this group
  String get iconAsset => 'assets/images/' + '$icon.png';

}

class Video {
  const Video({
    @required this.name,
    @required this.category,
    @required this.location,
    @required this.url,
    @required this.id,
    @required this.icon,

  }) : assert(name != null);
  /// Name of the [Video] of type [String]
  final String name;
  /// Category of type enum [VideoCategory]
  final VideoCategory category;
  /// Location of type enum [Location]
  final Location location;
  /// Youtube link of type [String]
  final String url;
  /// Asset name of the thumbnail of type [String]
  final String id;
  /// Asset name of the icon associated with the video of type [String]
  final String icon;

  String get iconAsset => 'assets/images/$icon.png';
  String get thumbnail => 'assets/videos/$id.png';
  String get youtubeId => url.replaceAll('https://youtu.be/', '');

  @override
  String toString() => '$name (id=$name)';
}