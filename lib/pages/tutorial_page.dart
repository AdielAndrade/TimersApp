import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:timers_app/model/tutorial_model.dart';

class TutorialPage extends StatefulWidget {
  @override
  _TutorialPageState createState() => _TutorialPageState();
}

class _TutorialPageState extends State<TutorialPage> {

  List<TutorialModel> tutorial = [];

  @override
  void initState() {
    List<TutorialModel> createTutorial = [];
    TutorialModel tutorialapp = TutorialModel("asserts/Logo.png", "O app (nome do app) foi criado com base no acrônimo TIMERS que faz parte do conceito do “Preparo do Leito da Ferida - Wound Bed Preparation (WBP)”. Esse acrônimo foi desenvolvido por um grupo internacional de especialistas nas áreas de medicina e enfermagem, envolvidos no cuidado de feridas.");
    TutorialModel tutorialQuizzes = TutorialModel("asserts/Quiz.png", "Além de explorar os conteúdos, você poderá participar de Quizes super legais onde a cada acerto você receberá uma pontuação que vai te fazer subir de nível e no ranking dos usuários. Você está preparad@ para aprender mais sobre avaliação e tratamento de feridas?");
    TutorialModel tutorialAcronym = TutorialModel("asserts/Timers.png", " A aplicação do TIMERS possibilita avaliar e tratar feridas crônicas/complexas e/ou de difícil cicatrização, de forma sistematizada, considerando os seguintes parâmetros: Tecido inviável (T), Inflamação ou Infecção (I), Gestão do Desequilíbrio da umidade (M), Bordas da ferida (E), Reparação (R) e Contexto Social (S).");
    createTutorial.add(tutorialapp);

    createTutorial.add(tutorialQuizzes);
    createTutorial.add(tutorialAcronym);

    setState(() {
      tutorial = createTutorial;
    });
    super.initState();
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
              onPressed: () {Navigator.pushReplacementNamed(context, '/home');})
        ],
      ),
      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  reverse: true,
                  enlargeCenterPage: true,
                  height: 600.0),
                items: tutorial.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        padding: EdgeInsets.all(8.0),
                        color: Colors.white,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                                i.image,
                                fit: BoxFit.contain,
                              ),
                            SizedBox(height: 20,),
                            Text(i.text, textAlign: TextAlign.center,)  

                          ],
                        ),
                      );
                    },
                  );
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
