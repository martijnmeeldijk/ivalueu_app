import 'package:flutter/cupertino.dart';

class PhotoDiaryEntry{
  PhotoDiaryEntry({
    @required this.title,
    @required this.description,
    this.image
  });
  String title;
  String description;
  String image;


}