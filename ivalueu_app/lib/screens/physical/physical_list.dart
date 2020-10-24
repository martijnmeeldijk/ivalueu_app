import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:ivalueu_app/model/app_state_model.dart';

class PhysicalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateModel>(
      builder: (context, model, child) {
        return const CustomScrollView(
          slivers: <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text('IValueU'),
            ),
          ],
        );
      },
    );
  }
}