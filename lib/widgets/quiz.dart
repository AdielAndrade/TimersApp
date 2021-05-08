import 'package:flutter/material.dart';
import 'package:timers_app/model/quiz_model.dart';

class Quiz extends StatefulWidget {
  QuizModel quiz;
  Function submit;

  Quiz(this.quiz, this.submit);

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  bool alt_a = false;
  bool alt_b = false;
  bool alt_c = false;
  bool alt_d = false;

  bool showAnswer = false;

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

  answering(){
    setState(() {
      showAnswer = true;
    });
  }


  submit(){
    if(alt_a && widget.quiz.alt_A == widget.quiz.correct){
      widget.submit(true);
    }else if(alt_b && widget.quiz.alt_B == widget.quiz.correct){
      widget.submit(true);
    }else if(alt_c && widget.quiz.alt_C == widget.quiz.correct){
      widget.submit(true);
    }else if(alt_d && widget.quiz.alt_D == widget.quiz.correct){
      widget.submit(true);
    }else{
      widget.submit(false);
    }
    turnFalse();
    setState(() {
      showAnswer = false;

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
          Text(
            "Questão",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text(widget.quiz.question),
          SizedBox(
            height: 20,
          ),
          widget.quiz.image != ""
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      widget.quiz.image,
                      height: 250,
                      width: 300,
                      fit: BoxFit.fill,
                    ),
                  ],
                )
              : SizedBox(),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () => showAnswer? (){} :selectAlt_a(),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color:showAnswer? widget.quiz.alt_A == widget.quiz.correct ? Colors.green: Colors.red : alt_a ? Colors.blue : Colors.black),
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
            onTap: () => showAnswer? (){} :selectAlt_b(),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color:showAnswer? widget.quiz.alt_B == widget.quiz.correct ? Colors.green: Colors.red : alt_b ? Colors.blue : Colors.black),
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
            onTap: () => showAnswer? (){} :selectAlt_c(),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color:showAnswer? widget.quiz.alt_C == widget.quiz.correct ? Colors.green: Colors.red : alt_c ? Colors.blue : Colors.black),
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
            onTap: () => showAnswer? (){} :selectAlt_d(),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color:showAnswer? widget.quiz.alt_D == widget.quiz.correct ? Colors.green: Colors.red : alt_d ? Colors.blue : Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Text(widget.quiz.alt_D),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          showAnswer? 
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OutlinedButton(
                  style: ElevatedButton.styleFrom(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                  ),
                  onPressed: () {submit();},
                  child: Text("               Continuar                ")),
            ],
          ):
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                  ),
                  onPressed: () {answering();},
                  child: Text("                 Enviar                  ")),
            ],
          )
        ],
      ),
    );
  }
}
