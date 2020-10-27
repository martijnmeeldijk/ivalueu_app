
import 'package:ivalueu_app/model/user.dart';

class UserRepository {
  static final UserRepository _singleton = UserRepository._internal();

  factory UserRepository() {
    return _singleton;
  }
  UserRepository._internal();

  static User user;

  static User getUser() {
    return user;
  }

  static void setUser(User u){
      user = u;
  }
}