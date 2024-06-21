import 'package:flutter/material.dart';



class MyApp3 extends StatefulWidget {
  @override
  State<MyApp3> createState() => _MyApp3State();
}

class _MyApp3State extends State<MyApp3> {
  final List<String> daysOfWeek = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
  ];

  final Map<String, List<String>> timetable = {
    'Monday': ['Mathematics', 'English', 'Science'],
    'Tuesday': ['History', 'Geography', 'Physical Education'],
    'Wednesday': ['Mathematics', 'English', 'Science'],
    'Thursday': ['History', 'Geography', 'Physical Education'],
    'Friday': ['Mathematics', 'English', 'Science'],
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black54,
          ),
        ),
        backgroundColor: Colors.green[900],
        title: Row(
          children: [
            Image.asset(
              'images/arid-agriculture.png', // Replace with your logo image path
              fit: BoxFit.contain,
              height: 30,
              // Adjust as necessary
            ),
            SizedBox(
              width: 10,
            ), // Optional spacing between logo and title text
            Text(
              "Time-Table",
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: daysOfWeek.length,
        itemBuilder: (context, index) {
          String day = daysOfWeek[index];
          List<String> subjects = timetable[day] ?? [];

          return Card(
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    day,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: subjects
                        .map((subject) => Text(
                      '- $subject',
                      style: TextStyle(fontSize: 16),
                    ))
                        .toList(),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
