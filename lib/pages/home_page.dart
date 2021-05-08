import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:timers_app/boxes.dart';
import 'package:timers_app/widgets/acronym_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String name = "";
  int t_points = 0;
  int i_points = 0;
  int m_points = 0;
  int e_points = 0;
  int r_points = 0;
  int s_points = 0;

  @override
  void initState() {
    final box = Boxes.getUsers();
    setState(() {
      name = box.getAt(box.length-1).nome;
      t_points = box.getAt(box.length-1).pontosT;
    });
    
    super.initState();
  }

  




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blue[300],
          actions: [
            IconButton(
                icon: Icon(Icons.logout),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/');
                })
          ],
          centerTitle: true,
          elevation: 0,
          title: Text(
            "",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          )),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue[300],
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Seja bem vindo ao Timers App",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.blueGrey[800]),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              name,
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blueGrey[800]),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.80,
              width: MediaQuery.of(context).size.width,
              decoration: new BoxDecoration(
                  color: Color(0xFFF3F3F5),
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(25.0),
                    topRight: const Radius.circular(25.0),
                  )),
              child: buildBody(),
            ),
          ),
        ],
      ),
    );
  }

  bool expanded = false;

  buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            AcronymCard(
              backgroundIconColor: Colors.yellow[300],
              title: "T - Tecido",
              subtitle: "Objetivo: Limpar o leito da ferida, desbridar o tecido desvitalizado.",
              icon: AssetImage('asserts/t_icon.png'),
              points: t_points.toDouble(),
            ),
             AcronymCard(
              backgroundIconColor: Colors.blue[300],
              title: "I - Inflamação",
              subtitle: "Objetivo: Controlar a inflamação, infecção, Biofilme.",
              icon: AssetImage('asserts/i_icon.png'),
              points: i_points.toDouble(),
            ),

             AcronymCard(
              backgroundIconColor: Colors.green[300],
              title:  "M - Umidade/exsudato",
              subtitle: "Objetivo: Controlar a umidade/exsudato da lesão.",
              icon: AssetImage('asserts/m_icon.png'),
              points: m_points.toDouble(),
            ),

            AcronymCard(
              backgroundIconColor: Colors.red[300],
              title:  "E - Bordas",
              subtitle: "Objetivo: redução do tamanho da ferida, epitelização.",
              icon: AssetImage('asserts/e_icon.png'),
              points: e_points.toDouble(),
            ),

            AcronymCard(
              backgroundIconColor: Colors.orange[300],
              title:  "R - Regeneração/Reparação",
              subtitle:"Objetivos: fechamento da ferida, reparo do tecido.",
              icon: AssetImage('asserts/r_icon.png'),
              points: r_points.toDouble(),
            ),

            AcronymCard(
              backgroundIconColor: Colors.black54,
              title:  "S -Fatores sociais",
              subtitle:"Objetivo: educação do paciente, família e cuidador; escuta ativa; compreensão do sistema de crenças.",
              icon: AssetImage('asserts/s_icon.png'),
              points: s_points.toDouble(),
            ),
            
          ],
        ),
      ),
    );
  }
}
