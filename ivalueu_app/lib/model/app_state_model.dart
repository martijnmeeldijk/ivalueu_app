import 'package:flutter/foundation.dart' as foundation;

import 'video.dart';
import 'video_repository.dart';

class AppStateModel extends foundation.ChangeNotifier {
  List<Video> _availableVideos;

  void loadPhysicalVideos() {
    _availableVideos = VideosRepository.loadVideos(VideoCategory.physical);
    notifyListeners();
  }

  void loadEmotionalVideos() {
    _availableVideos = VideosRepository.loadVideos(VideoCategory.emotional1);
    notifyListeners();
  }

  void loadVideos() {
    loadPhysicalVideos();
  }

  List<Video> getVideos() {
    if (_availableVideos == null) {
      return [];
    }
    return _availableVideos.where((p) {
      return p.category == VideoCategory.physical;
    }).toList();
  }
}
