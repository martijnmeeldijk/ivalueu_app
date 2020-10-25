import 'package:flutter/foundation.dart';

enum VideoCategory {
  physical,
  emotional1,
  emotional2,
  emotional3,
  emotional4,
}

enum Location {
  indoors,
  outdoors
}

class EmotionalGroup{
  const EmotionalGroup({
    @required this.name,
    @required this.category,
    @required this.icon
});
  final String name;
  final VideoCategory category;
  final String icon;

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




  final String name;
  final VideoCategory category;
  final Location location;
  final String url;
  final String id;
  final String icon;

  String get iconAsset => 'assets/images/$icon.png';
  String get thumbnail => 'assets/videos/$id.png';
  String get youtubeId => url.replaceAll('https://youtu.be/', '');

  @override
  String toString() => '$name (id=$name)';
}