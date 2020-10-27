import 'package:flutter/cupertino.dart';

class Organisations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Organisations"),
      ),
      child: SafeArea(
        child: Center(
            child: Column(
              children: [
                Center(
                  child: SizedBox(
                    child: Image.asset('assets/images/kuleuven.png'),
                  ),
                ),
                Center(
                  child: SizedBox(
                    child: Image.asset('assets/images/kuleuven1.png'),
                  ),
                ),


              ],
            )),
      ),
    );
  }
}
