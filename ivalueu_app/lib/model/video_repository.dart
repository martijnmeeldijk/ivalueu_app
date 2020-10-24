import 'video.dart';

class VideosRepository {
  static const _allVideos = <Video>[
    Video(
      name: "Category.accessories",

    ),

    // THIS IS A SAMPLE FILE. Get the full content at the link above.
  ];

  static List<Video> loadVideos(Category category) {

      return _allVideos.where((p) => p.category == category).toList();

  }
}