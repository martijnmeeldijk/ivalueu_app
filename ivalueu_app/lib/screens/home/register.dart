import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ivalueu_app/model/user.dart';
import 'package:ivalueu_app/model/user_repository.dart';

class Register extends StatefulWidget {
  @override
  _TestFormState createState() => _TestFormState();
}

class _TestFormState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  User model = User();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _passwordController = TextEditingController();
  Widget preview;
  UserTheme theme;
  UserLanguage language;
  DateTime date;

  @override
  Widget build(BuildContext context) {
    showThemePicker() {
      showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) => CupertinoActionSheet(
            title: const Text('Theme'),
            message: const Text('Choose theme '),
            actions: <Widget>[
              CupertinoActionSheetAction(
                child: const Text('Dark'),
                onPressed: () {
                  theme = UserTheme.dark;
                  Navigator.pop(context);
                },
              ),
              CupertinoActionSheetAction(
                child: const Text('Light'),
                onPressed: () {
                  theme = UserTheme.light;
                  Navigator.pop(context);
                },
              )
            ],
            cancelButton: CupertinoActionSheetAction(
              child: const Text('Cancel'),
              isDefaultAction: true,
              onPressed: () {
                Navigator.pop(context, 'Cancel');
              },
            )),
      );
    }

    showMyDatePicker() {
      showModalBottomSheet(
          context: context,
          builder: (BuildContext builder) {
            return Column(
              children: [
                Container(
                    height: MediaQuery.of(context).copyWith().size.height / 3,
                    child: CupertinoDatePicker(
                      initialDateTime: DateTime(2000, 1, 1),
                      onDateTimeChanged: (DateTime newdate) {
                        date = newdate;
                      },
                      use24hFormat: true,
                      maximumDate: new DateTime(2022, 12, 30),
                      minimumYear: 1900,
                      maximumYear: 2022,
                      minuteInterval: 1,
                      mode: CupertinoDatePickerMode.date,
                    )),

              ],

            );
          });
    }

    showLanguagePicker() {
      showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) => CupertinoActionSheet(
            title: const Text('Language'),
            message: const Text('Choose Language '),
            actions: <Widget>[
              CupertinoActionSheetAction(
                child: const Text('English'),
                onPressed: () {
                  language = UserLanguage.english;
                  Navigator.pop(context);
                },
              ),
              CupertinoActionSheetAction(
                child: const Text('Welsh'),
                onPressed: () {
                  language = UserLanguage.welsh;
                  Navigator.pop(context);
                },
              )
            ],
            cancelButton: CupertinoActionSheetAction(
              child: const Text('Cancel'),
              isDefaultAction: true,
              onPressed: () {
                Navigator.pop(context, 'Cancel');
              },
            )),
      );
    }

    return CupertinoPageScaffold(
      resizeToAvoidBottomInset: true,
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Register'),
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Center(
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topCenter,
                      child: MyTextFormField(
                        hintText: 'First Name',
                        controller: _firstNameController,
                        onSaved: (String value) {
                          model.firstName = value;
                        },
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      child: MyTextFormField(
                        hintText: 'Last Name',
                        controller: _lastNameController,
                        onSaved: (String value) {
                          model.lastName = value;
                        },
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      child: MyTextFormField(
                        hintText: 'Password',
                        controller: _passwordController,
                        onSaved: (String value) {
                          model.password = value;
                        },
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        const SizedBox(height: 15),
                        Text(
                            "Selected theme: ${theme.toString().substring(theme.toString().indexOf('.') + 1)}"),
                        const SizedBox(height: 15),
                        GestureDetector(
                          onTap: showThemePicker,
                          child: Center(
                            child: Text(
                              "Select Theme",
                              style: TextStyle(
                                fontFamily: 'Arial',
                                color: CupertinoColors.activeBlue,
                                height: 1,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        const SizedBox(height: 15),
                        Text(
                            "Selected language: ${language.toString().substring(language.toString().indexOf('.') + 1)}"),
                        const SizedBox(height: 15),
                        GestureDetector(
                          onTap: showLanguagePicker,
                          child: Center(
                            child: Text(
                              "Select Language",
                              style: TextStyle(
                                fontFamily: 'Arial',
                                color: CupertinoColors.activeBlue,
                                height: 1,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        const SizedBox(height: 15),
                        Text(
                            "Selected date: ${date.toString()}"),
                        const SizedBox(height: 15),
                        GestureDetector(
                          onTap: showMyDatePicker,
                          child: Center(
                            child: Text(
                              "Select Date",
                              style: TextStyle(
                                fontFamily: 'Arial',
                                color: CupertinoColors.activeBlue,
                                height: 1,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    CupertinoButton(
                      onPressed: () async {
                        if (valid(_firstNameController.text) &&
                            valid(_lastNameController.text) && language != null && theme != null && date != null && valid(_passwordController.text)) {
                          /*if(_image != null) */ /*final File newImage =
                              await _image.copy(
                                  'assets/images/${_titleController.text}.png');*/
                          UserRepository.setUser(new User(
                              firstName: _firstNameController.text,
                              lastName: _lastNameController.text,
                              theme: theme,
                              language: language,
                              dob: date,
                              password: _passwordController.text));
                          Navigator.pop(context);
                        } else {
                          showCupertinoModalPopup(
                              context: context,
                              builder: (BuildContext context) {
                                // return object of type Dialog
                                return Padding(
                                  padding: const EdgeInsets.all(50),
                                  child: CupertinoPopupSurface(
                                    child: Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Text(
                                          "All fields need to be filled in!"),
                                    ),
                                  ),
                                );
                              });
                        }
                      },
                      child: Text(
                        'Register',
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
      ),
    );
  }
}

bool valid(String input) {
  return input.isNotEmpty;
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
