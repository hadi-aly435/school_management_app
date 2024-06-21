
import 'package:flutter/material.dart';

class MyAppa extends StatefulWidget {
  const MyAppa({super.key});

  @override
  State<MyAppa> createState() => _MyAppaState();
}

class _MyAppaState extends State<MyAppa> {
  final Map<String, List<bool>> studentAttendance = {
    'Ali Ahmad ': [true, true, false, false, true], // Example attendance data
    'Usama Gohar': [false, false, true, false, true], // Example attendance data
    'Bilal Ahmad': [true, false, true, true, true],
    'Kashif Ansari': [true, true, true, false, true],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
          child: const Icon(
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
            const SizedBox(width: 10), // Optional spacing between logo and title text
            const Text(
              "Attendance",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),

      ),
      body: ListView.builder(
        itemCount: studentAttendance.length,
        itemBuilder: (context, index) {
          String studentName = studentAttendance.keys.elementAt(index);
          List<bool> attendance = studentAttendance[studentName]!;

          int totalDays = attendance.length;
          int presentCount = attendance.where((attended) => attended).length;

          return Card(
            margin: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    studentName,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text('Total Days: $totalDays'),
                  Text('Present: $presentCount'),
                  const SizedBox(height: 5),
                  const Divider(),
                  const SizedBox(height: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      attendance.length,
                          (dayIndex) {
                        String attendanceStatus =
                        attendance[dayIndex] ? 'Present' : 'Absent';
                        return Text(
                          'Day ${dayIndex + 1}: $attendanceStatus',
                          style: const TextStyle(fontSize: 16),
                        );
                      },
                    ),
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
