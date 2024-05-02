import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourseDetails extends StatelessWidget {
  static const String routeName = "CourseDetails";

  @override
  Widget build(BuildContext context) {
    CourseArg arguments =
    ModalRoute.of(context)?.settings.arguments as CourseArg;
    return Scaffold(
     appBar: AppBar(
        title: Text(arguments.CourseTitle,style: TextStyle(fontSize: 24),),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/splasshhhh.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF181A29), // Start color
              Color(0xFF181A29), // End color, you can change this if you want a different end color
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Image.asset(arguments.CourseImage),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  arguments.CourseContent,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CourseArg {
  String CourseTitle;
  String CourseImage;
  String CourseContent;
  CourseArg(
      {required this.CourseImage,
        required this.CourseContent,
        required this.CourseTitle});
}


