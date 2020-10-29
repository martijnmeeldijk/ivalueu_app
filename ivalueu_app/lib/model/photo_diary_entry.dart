import 'dart:io';


/// One entry in the Photo Diary
class PhotoDiaryEntry{
  PhotoDiaryEntry({
    this.title,
    this.description,
    this.image
  });
  /// The title of the photo
  String title;
  /// The description of the photo
  String description;
  /// A [File] containing the image linked with the entry
  File image;


}