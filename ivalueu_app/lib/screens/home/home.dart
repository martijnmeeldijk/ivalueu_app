import 'package:flutter/cupertino.dart';
import 'package:ivalueu_app/model/user.dart';
import 'package:ivalueu_app/model/user_repository.dart';
import 'package:ivalueu_app/screens/home/register.dart';


/// This widget contains the iValueU home page.
///
/// It's a stateful widget so that it can refresh its state when the [User] is logged in.
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    User user = UserRepository.user;
    Widget login;
    if(user == null){
      login = GestureDetector(
        child: Text("Register",
          style: TextStyle(
            fontSize: 18,
            color: CupertinoColors.activeBlue,
            height: 1,
          ),
          textAlign: TextAlign.center,),
        onTap: () {
          Navigator.push(
            context,
            CupertinoPageRoute(builder: (context) => Register()),
          ).then((value) {
            setState(() {

            });
          });
        },
      );
    }
    else{
      login = GestureDetector(
        child: Text("Log out",
          style: TextStyle(
            fontSize: 18,
            color: CupertinoColors.activeBlue,
            height: 1,
          ),
          textAlign: TextAlign.center,),
        onTap: () {
          setState(() {
            UserRepository.user = null;
            user = null;
          });
        },
      );
    }
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('IValueU'),
        trailing: login
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
              child: Column(
            children: [
              Image.asset('assets/images/MapleLeafLarge.png'),
              Container(
                width: 240.0,
                height: 42.0,
                decoration: BoxDecoration(
                    color: CupertinoColors.systemGrey4,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: CupertinoColors.black.withOpacity(0.1),
                          spreadRadius: 4,
                          blurRadius: 10),
                    ]),
                child: Center(
                  child: Text(
                    'Wellbeing IValueU',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 18,
                      color: CupertinoColors.black,
                      height: 1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
