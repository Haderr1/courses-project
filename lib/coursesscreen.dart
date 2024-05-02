import 'package:assigment3/coursrbutton.dart';
import 'package:assigment3/coursrdata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coursera",style: TextStyle(fontSize: 24),),
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
              Color(0xFFFFFFFF), // End color, you can change this if you want a different end color
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    CoursrButton(
                      courseData: CourseData("androidd.png", "Android Course"),
                    ),
                    CoursrButton(
                      courseData: CourseData("ioss.jpg", "IOS Course"),
                    ),
                    CoursrButton(
                      courseData: CourseData("stacck.jpg", "FullStack Course"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
