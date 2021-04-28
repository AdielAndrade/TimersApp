import 'package:flutter/material.dart';
import 'package:timers_app/model/quiz_model.dart';

class Quiz extends StatefulWidget {
  QuizModel quiz;

  Quiz(this.quiz);




  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  bool alt_a = false;
  bool alt_b = false;
  bool alt_c = false;
  bool alt_d = false;

  turnFalse() {
    setState(() {
      alt_a = false;
      alt_b = false;
      alt_c = false;
      alt_d = false;
    });
  }

  selectAlt_a() {
    turnFalse();
    setState(() {
      alt_a = true;
    });
  }

  selectAlt_b() {
    turnFalse();
    setState(() {
      alt_b = true;
    });
  }

  selectAlt_c() {
    turnFalse();
    setState(() {
      alt_c = true;
    });
  }

  selectAlt_d() {
    turnFalse();
    setState(() {
      alt_d = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Questão", style:  TextStyle(fontWeight: FontWeight.bold),),
          SizedBox(
            height: 20,
          ),
          Text(widget.quiz.question),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                widget.quiz.image,
                height: 250,
                width: 300,
                fit: BoxFit.fill,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () => selectAlt_a(),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: alt_a ? Colors.blue : Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Text(widget.quiz.alt_A),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: () => selectAlt_b(),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: alt_b ? Colors.blue : Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Text(widget.quiz.alt_B),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: () => selectAlt_c(),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: alt_c ? Colors.blue : Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Text(widget.quiz.alt_C),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: () => selectAlt_d(),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: alt_d ? Colors.blue : Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Text(widget.quiz.alt_D),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
