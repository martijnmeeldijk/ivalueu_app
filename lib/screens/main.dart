// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CustomTextContainer(),
              CustomTextContainer(),
              CustomTextContainer(),
            ],

          )
        ),
      ),
    );
  }
}

class CustomTextContainer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Text('peieieiie');
  }
}
