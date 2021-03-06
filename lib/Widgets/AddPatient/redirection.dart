import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:minderbrain/Widgets/Quizzs/screens/home_screen.dart';
import 'package:passwordfield/passwordfield.dart';
import 'package:link_text/link_text.dart';
import '../ForgotPassword/ForgotPassword.dart';
import '../SignUp/SignUp.dart';
import '../ReminderTasks/ReminderTask.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class Redirection extends StatelessWidget {
  //final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // ignore: prefer_const_constructors
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 160, 194, 225),
          appBar: AppBar(
            title: Text("                        Page Patient"),
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color.fromARGB(204, 232, 234, 235),
                  Color.fromARGB(204, 232, 234, 235),
                  Color.fromARGB(204, 232, 234, 235),
                  Color.fromARGB(204, 232, 234, 235),
                ])),
            child: SingleChildScrollView(
                child: Column(
                    verticalDirection: VerticalDirection.down,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  /*Center(
                  child: Image(image: AssetImage("../images/logo.png")),
                ),*/

                  SizedBox(
                    height: 150,
                    child: Center(
                      child: Image.asset('images/loog2.png'),
                      //child: Image(image: AssetImage("../images/logo.png")),
                    ),
                  ),
                  SizedBox(height: 60),
                  Center(
                      child: Text(
                    "Patient Ajout?? !",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                        fontSize: 22.0),
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(12)),
                              fixedSize: Size(500, 50),
                              primary: Colors.blue),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()),
                            );
                          },
                          child: const Text(
                            'Passer Quizz !',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ])),
          )),
    );
  }
}
