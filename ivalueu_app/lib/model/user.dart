
/// This class describes the user of our application
class User{
  User({
     this.firstName,
     this.lastName,
     this.dob,
     this.password,
     this.theme,
     this.language,
  });
  /// First Name of the User
  String firstName;
  /// Last Name of the User
  String lastName;
  /// Users date of birth
  DateTime dob;
  /// Users password
  String password;
  /// Users theme of type enum [UserTheme]
  UserTheme theme;
  /// Users language of type enum [UserLanguage]
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