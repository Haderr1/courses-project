import 'package:assigment3/coursedetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SplashScreen.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "courses",
      routes: {
        SplashScreen.routeName: (buildContext) => SplashScreen(),
        CourseDetails.routeName: (buildContext) => CourseDetails(),

      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
