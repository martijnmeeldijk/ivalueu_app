import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ivalueu_app/model/photo_diary_entry.dart';
import 'package:ivalueu_app/model/photo_diary_repository.dart';
import 'package:ivalueu_app/screens/photo_diary/photo_diary.dart';

class TestForm extends StatefulWidget {
  @override
  _TestFormState createState() => _TestFormState();
}

class _TestFormState extends State<TestForm> {
  final _formKey = GlobalKey<FormState>();
  PhotoDiaryEntry model = PhotoDiaryEntry();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  File _image;
  Widget preview;

  @override
  Widget build(BuildContext context) {
    if (_image != null) {
      preview = Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            Text("Selected Image:"),
            Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: CupertinoColors.systemGrey,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: ResizeImage(FileImage(_image), width: 200))),
                )),
          ],
        ),
      );
    } else
      preview = Container();

    _imgFromCamera() async {
      FocusScope.of(context).unfocus();
      File image = await ImagePicker.pickImage(
          source: ImageSource.camera, imageQuality: 50);

      setState(() {
        _image = image;
      });
    }

    _imgFromGallery() async {
      FocusScope.of(context).unfocus();
      File image = await ImagePicker.pickImage(
          source: ImageSource.gallery, imageQuality: 50);

      setState(() {
        _image = image;
      });
    }

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Add Photo'),
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topCenter,
                    child: MyTextFormField(
                      hintText: 'Title',
                      controller: _titleController,
                      onSaved: (String value) {
                        model.title = value;
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    child: MyTextFormField(
                      hintText: 'Description',
                      controller: _descriptionController,
                      onSaved: (String value) {
                        model.description = value;
                      },
                    ),
                  ),
                  CupertinoButton(
                    onPressed: () {
                      _imgFromGallery();
                    },
                    child: Text(
                      'Choose Photo',
                      style: TextStyle(
                        color: CupertinoColors.activeBlue,
                      ),
                    ),
                  ),
                  CupertinoButton(
                    onPressed: () {
                      _imgFromCamera();
                    },
                    child: Text(
                      'Camera',
                      style: TextStyle(
                        color: CupertinoColors.activeBlue,
                      ),
                    ),
                  ),
                  CupertinoButton(
                    onPressed: () async {
                      if (valid(_descriptionController.text) &&
                          valid(_titleController.text)) {
                        /*if(_image != null) */ /*final File newImage =
                            await _image.copy(
                                'assets/images/${_titleController.text}.png');*/
                        PhotoDiaryRepository.addEntry(new PhotoDiaryEntry(
                            title: _titleController.text,
                            description: _descriptionController.text,
                            image: _image));
                        Navigator.pop(context);
                      }
                    },
                    child: Text(
                      'Save',
                      style: TextStyle(
                        color: CupertinoColors.activeBlue,
                      ),
                    ),
                  ),
                  Container(child: preview),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

bool valid(String input) {
  return true;
}

class MyTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final Function onSaved;
  final bool isPassword;
  final bool isEmail;

  MyTextFormField({
    this.hintText,
    this.controller,
    this.onSaved,
    this.isPassword = false,
    this.isEmail = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: CupertinoTextField(
        controller: controller,
        placeholder: hintText,
        obscureText: isPassword ? true : false,
        onSubmitted: onSaved,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      ),
    );
  }
}
