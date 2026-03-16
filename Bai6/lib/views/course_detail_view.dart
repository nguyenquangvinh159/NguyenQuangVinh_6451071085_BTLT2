import 'package:flutter/material.dart';
import '../utils/course_data.dart';
import '../widgets/enroll_button.dart';

class CourseDetailView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final course = CourseData.course;

    return Scaffold(

      appBar: AppBar(
        title: Text("Course Detail"),
      ),

      body: SingleChildScrollView(

        child: Padding(

          padding: EdgeInsets.all(16),

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              Image.network(course.image),

              SizedBox(height: 20),

              Text(
                course.title,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),

              Row(
                children: [
                  Icon(Icons.person, size: 18),
                  SizedBox(width: 6),
                  Text("Instructor: ${course.instructor}"),
                ],
              ),

              SizedBox(height: 16),

              Text(
                course.description,
                style: TextStyle(fontSize: 15),
              ),

              SizedBox(height: 30),

              Center(
                child: EnrollButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Enrolled successfully!")),
                    );
                  },
                ),
              )

            ],

          ),

        ),

      ),

    );
  }
}