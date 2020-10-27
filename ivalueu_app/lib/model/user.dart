

class User{
  User({
    this.firstName,
     this.lastName,
     this.dob,
     this.password,
     this.theme,
     this.language,
  });
  String firstName;
  String lastName;
  DateTime dob;
  String password;
  UserTheme theme;
  UserLanguage language;



}

enum UserTheme{
  light,
  dark
}

enum UserLanguage{
  english,
  welsh
}