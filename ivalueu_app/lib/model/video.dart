import 'package:flutter/foundation.dart';

enum Category {
  physical,
  emotional,
}

class Video {
  const Video({
    @required this.name,
    @required this.category,

  }) : assert(name != null);




  final String name;
  final Category category;


  String get assetName => '$name-0.jpg';

  String get assetPackage => 'shrine_images';

  @override
  String toString() => '$name (id=$name)';
}