import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:timers_app/model/quiz_model.dart';
import 'package:timers_app/widgets/quiz.dart';

import '../boxes.dart';

class QuizzesPage extends StatefulWidget {
  @override
  _QuizzesPageState createState() => _QuizzesPageState();
}

class _QuizzesPageState extends State<QuizzesPage> {

  List<QuizModel> quizzes = t_quiz;

  CollectionReference users = FirebaseFirestore.instance.collection('users');

  int index = 0;

  int score = 0;

  submitQuiz(bool correct){
  
    if(index < quizzes.length -1){
      if(correct){
        setState(() {
        score++;
      });
      print(score);
      }
      setState(() {
        index++;
      });

    }else{
      _showMyDialog();
    }
  }

  Future<void> _showMyDialog() async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Sua pontuação foi:'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Center(child: Text(score.toString()+" / "+quizzes.length.toString(), )),
              Center(
                child: 
                SmoothStarRating(
                          allowHalfRating: false,
                          starCount: 5,
                          rating: (score.toDouble()/quizzes.length)*5,
                          size: 35.0,
                          isReadOnly: true,
                          color: Colors.blue[300],
                          borderColor: Colors.blue[300],
                          spacing: 0.0),
              )
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text('Retornar'),
            onPressed: () async {
              final box = Boxes.getUsers();
              await users.doc(box.getAt(box.length-1).id).update({
              'pontos_T' : score
              });
              Navigator.of(context).pop();
              Navigator.of(context).pop();
             
            },
          ),
        ],
      );
    },
  );
}



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
               Quiz(quizzes[index], submitQuiz )
            ,
           
          ],
        ),
      ),
    );
  }
}
