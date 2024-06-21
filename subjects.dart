
import 'package:flutter/material.dart';
class MyApps extends StatefulWidget {
  @override
  State<MyApps> createState() => _MyAppsState();
}
class _MyAppsState extends State<MyApps> {
  List<Subject> enrolledSubjects = [];
  List<Subject> availableSubjects = [
    Subject(id: '1', name: 'Mathematics', description: 'Advanced math course'),
    Subject(id: '2', name: 'Science', description: 'Biology, Chemistry, Physics'),
    Subject(id: '3', name: 'History', description: 'World history overview'),
    Subject(id: '4', name: 'Urdu', description: 'Advanced Urdu course'),
    Subject(id: '5', name: 'English', description: 'English Leturature , Comunication Skills'),
    Subject(id: '6', name: 'Pak Study', description: 'History of Pakistan'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black54,
          ),
        ),
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
              "Subjects",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),


          ],
        ),
      ),
      body: ListView.builder(
        itemCount: availableSubjects.length,
        itemBuilder: (context, index) {
          final subject = availableSubjects[index];
          return ListTile(
            title: Text(subject.name),
            subtitle: Text(subject.description),
            trailing: IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                setState(() {
                  enrolledSubjects.add(subject);
                });
              },
            ),
          );
        },
      ),
    );
  }
}

class Subject {
  final String id;
  final String name;
  final String description;

  Subject({
    required this.id,
    required this.name,
    required this.description,
  });
}
