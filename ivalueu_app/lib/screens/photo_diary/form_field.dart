import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ivalueu_app/model/photo_diary_entry.dart';
import 'package:ivalueu_app/screens/photo_diary/photo_diary.dart';

class TestForm extends StatefulWidget {
  @override
  _TestFormState createState() => _TestFormState();
}

class _TestFormState extends State<TestForm> {
  final _formKey = GlobalKey<FormState>();
  PhotoDiaryEntry model = PhotoDiaryEntry();

  @override
  Widget build(BuildContext context) {

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
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Enter your title';
                        }
                        return null;
                      },
                      onSaved: (String value) {
                        model.title = value;
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    child: MyTextFormField(
                      hintText: 'Description',
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Enter Description';
                        }
                        return null;
                      },
                      onSaved: (String value) {
                        model.description = value;
                      },
                    ),
                  ),
                  CupertinoButton(
                    onPressed: () {

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

                    },
                    child: Text(
                      'Camera',
                      style: TextStyle(
                        color: CupertinoColors.activeBlue,
                      ),
                    ),
                  ),


                  CupertinoButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        _formKey.currentState.save();
                        Navigator.pop(context);
                      }
                    },
                    child: Text(
                      'Save',
                      style: TextStyle(
                        color: CupertinoColors.activeBlue,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyTextFormField extends StatelessWidget {
  final String hintText;
  final Function validator;
  final Function onSaved;
  final bool isPassword;
  final bool isEmail;

  MyTextFormField({
    this.hintText,
    this.validator,
    this.onSaved,
    this.isPassword = false,
    this.isEmail = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: CupertinoTextField(
        placeholder: hintText,

        obscureText: isPassword ? true : false,
        onSubmitted: onSaved,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      ),
    );
  }
}