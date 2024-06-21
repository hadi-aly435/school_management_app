import 'package:flutter/material.dart';
class MyAppm extends StatefulWidget {
  @override
  State<MyAppm> createState() => _MyAppmState();
}
class _MyAppmState extends State<MyAppm> {
  final Map<String, Map<String, int>> studentMarks = {
    'Usama Gohar': {
      'Mathematics': 85,
      'English': 78,
      'Science': 92,
      'History': 87,
    },
    'Ali Ahmad': {
      'Mathematics': 90,
      'English': 82,
      'Science': 88,
      'History': 85,
    },
    'Bilal Ahmad': {
      'Mathematics': 85,
      'English': 98,
      'Science': 92,
      'History': 99,
    },
    'Kashif Ansari': {
      'Mathematics': 20,
      'English': 72,
      'Science': 68,
      'History': 35,
    },
    // Add more students as needed
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
                width: 10), // Optional spacing between logo and title text
            Text(
              "Marks",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: studentMarks.length,
        itemBuilder: (context, index) {
          String studentName = studentMarks.keys.elementAt(index);
          Map<String, int> marks = studentMarks[studentName]!;

          return Card(
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    studentName,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: marks.entries
                        .map((entry) => Padding(
                      padding: EdgeInsets.symmetric(vertical: 2),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            entry.key,
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            entry.value.toString(),
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
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

