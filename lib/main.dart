import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';
import 'package:timers_app/model/user_model.dart';
import 'package:timers_app/pages/assessment_page.dart';
import 'package:timers_app/pages/cover_page.dart';
import 'package:timers_app/pages/home_page.dart';
import 'package:timers_app/pages/login_page.dart';
import 'package:timers_app/pages/quizzes_page.dart';
import 'package:timers_app/pages/register_page.dart';
import 'package:timers_app/pages/treatment_page.dart';
import 'package:timers_app/pages/tutorial_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox<User>("users");
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
        "/home" : (context) => HomePage(),
        '/assessment' : (context) => AssessmentPage(),
        '/treatment' : (context) => TreatmentPage(),
        '/cover' : (context) => CoverPage(),
      },
    );
  }
}


