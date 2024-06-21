import 'dart:async';
import 'package:flutter/material.dart';
import 'package:final_project/signup.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 10),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage())));
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/arid-agriculture.png'),
                  radius: 70,
                ),
                SizedBox(height: 20,),
                Text(
                  "Arid University - Barani Institute of Sciences Burewala",
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
                SizedBox(height: 20,),
                CircularProgressIndicator(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
