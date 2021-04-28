import 'package:flutter/material.dart';
import 'package:timers_app/model/quiz_model.dart';
import 'package:timers_app/widgets/quiz.dart';

class QuizzesPage extends StatefulWidget {
  @override
  _QuizzesPageState createState() => _QuizzesPageState();
}

class _QuizzesPageState extends State<QuizzesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.blue,
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              })
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
                children: t_quiz.map((quiz) {
              return Quiz(quiz);
            }).toList()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                    ),
                    onPressed: () {},
                    child: Text("                 Enviar                  ")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
