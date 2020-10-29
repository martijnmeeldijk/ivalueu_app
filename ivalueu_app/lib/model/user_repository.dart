
import 'package:ivalueu_app/model/user.dart';

/// A singleton class simulating a db to store a single [User].
class UserRepository {
  static final UserRepository _singleton = UserRepository._internal();

  factory UserRepository() {
    return _singleton;
  }
  UserRepository._internal();

  static User user;

  /// Returns the active [User]
  /// Returns null if the user is not logged in
  static User getUser() {
    return user;
  }

  /// Takes a [User] and sets it as the active user
  static void setUser(User u){
      user = u;
  }
}