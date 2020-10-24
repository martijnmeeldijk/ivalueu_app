import 'package:flutter/foundation.dart' as foundation;

import 'video.dart';
import 'video_repository.dart';


class AppStateModel extends foundation.ChangeNotifier {

  List<Video> _availableVideos;

  void loadPhysicalVideos() {
    _availableVideos = VideosRepository.loadVideos(Category.physical);
    notifyListeners();
  }

  void loadEmotionalVideos() {
    _availableVideos = VideosRepository.loadVideos(Category.emotional);
    notifyListeners();
  }

}