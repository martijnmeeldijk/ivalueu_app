
import 'package:ivalueu_app/model/photo_diary_entry.dart';

class PhotoDiaryRepository {
  static final PhotoDiaryRepository _singleton = PhotoDiaryRepository._internal();

  factory PhotoDiaryRepository() {
    return _singleton;
  }
  PhotoDiaryRepository._internal();

  static var _allGroups = <PhotoDiaryEntry>[


  ];
  static List<PhotoDiaryEntry> loadEntries() {
    return _allGroups.toList();
  }

  static bool addEntry(PhotoDiaryEntry entry){
    if(entry.title != null && entry.description!= null){
      _allGroups.add(entry);
      return true;
    }
    return false;

  }
}