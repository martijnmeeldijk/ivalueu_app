
import 'package:ivalueu_app/model/photo_diary_entry.dart';


/// A singleton class emulating a database to store the entries of type [PhotoDiaryEntry]
class PhotoDiaryRepository {
  static final PhotoDiaryRepository _singleton = PhotoDiaryRepository._internal();

  factory PhotoDiaryRepository() {
    return _singleton;
  }
  PhotoDiaryRepository._internal();

  static var _allGroups = <PhotoDiaryEntry>[


  ];
  /// Returns a [List] of [PhotoDiaryEntry] containing all entries in the diary
  static List<PhotoDiaryEntry> loadEntries() {
    return _allGroups.toList();
  }

  /// Adds an entry of type [PhotoDiaryEntry] to the repository
  static bool addEntry(PhotoDiaryEntry entry){
    if(entry.title != null && entry.description!= null){
      _allGroups.add(entry);
      return true;
    }
    return false;

  }
}