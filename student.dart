
import 'package:final_project/attendence.dart';
import 'package:final_project/marks.dart';
import 'package:final_project/subjects.dart';
import 'package:final_project/timetable.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class StudentDashboard extends StatefulWidget {
  @override
  State<StudentDashboard> createState() => _StudentDashboardState();
}

class _StudentDashboardState extends State<StudentDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.green[900],
          title: Row(
            children: [
              Image.asset(
                'images/arid-agriculture.png', // Replace with your logo image path
                fit: BoxFit.contain,
                height: 30,
                // Adjust as necessary
              ),
              const SizedBox(
                  width: 10), // Optional spacing between logo and title text
              const Text(
                "Arid University - Barani Institute of Sciences Burewala",
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: [
                          const Center(
                            child: Row(children: []),
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                child: const Text(
                                  'Student Dashboard',
                                  style: TextStyle(
                                    fontSize: 30,
                                  ), // Adjust font size as needed
                                ),
                              ),
                            ],
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  width: 150,
                                  height: 150,
                                  child: ElevatedButton(
                                    onPressed: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (BuildContext context) =>  MyApp3()),
                                      );
                                    },
                                    child: const Text('View Timetable'),
                                  ),
                                ),

                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 150,
                                  height: 150,
                                  child: ElevatedButton(
                                    onPressed: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (BuildContext context) =>  MyApps()),
                                      );
                                    },
                                    child: const Text('Enrolled Subjects'),
                                  ),
                                ),


                                ]
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),

                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  width: 150,
                                  height: 150,
                                  child: ElevatedButton(
                                    onPressed: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (BuildContext context) =>  MyAppm()),
                                      );
                                    },
                                    child: const Text('View Marks Sheet'),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 150,
                                  height: 150,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (BuildContext context) => const MyAppa()),
                                      );
                                    },
                                    child: const Text('View Atendence'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Simulate logout or navigate back to login page
                              FirebaseAuth.instance.signOut();
                              Navigator.pushReplacementNamed(context, '/');
                            },
                            child: const Text('Logout'),
                          ),
                        ],
                      ),
                    ]),
              ),
            ],
          ),
        ));
  }

  void _launchURL(String url) async {
    if (await canLaunch('https://baraniinstitute.edu.pk/bisbrw/course_contents.php')) {
      await launch('https://baraniinstitute.edu.pk/bisbrw/course_contents.php');
    } else {
      throw 'Could not launch $url';
    }
  }
}

launch(String s) {
}

canLaunch(String url) {
}
