import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:timers_app/pages/home_page.dart';
import 'package:timers_app/pages/login_page.dart';
import 'package:timers_app/pages/quizzes_page.dart';
import 'package:timers_app/pages/register_page.dart';
import 'package:timers_app/pages/tutorial_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await  Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Nunito Sans',
      ),
      debugShowCheckedModeBanner: false,
     
      initialRoute: '/',
      routes: {
        "/" : (context) => LoginPage(),
        "/quizzes" : (context) => QuizzesPage(),
        "/login" : (context) => LoginPage(),
        "/tutorial" : (context) => TutorialPage(),
        "/register" : (context) => RegisterPage(),
        "/home" : (context) => HomePage()
      },
    );
  }
}


