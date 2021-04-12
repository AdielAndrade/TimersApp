import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  Navigator.pop(context);
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
              height: MediaQuery.of(context).size.height * 0.8,
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
                              style: TextStyle(fontSize: 16,
                              color: Colors.blueGrey[800]),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Adiel Andrade",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                color: Colors.blueGrey[800]
                              ),
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
              height: MediaQuery.of(context).size.height * 0.8,
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

  buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            Card(
              child: ListTile(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                leading: CircleAvatar(
                  backgroundColor: Colors.yellow[300],
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    foregroundImage: AssetImage('asserts/t_icon.png'),
                    radius: 27,
                  ),
                  radius: 30,
                ),
                title: Text(
                  "Tecido",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                subtitle: Text(
                  "Objetivo: Limpar o leito da ferida, desbridar o tecido desvitalizado.",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              elevation: 5,
            ),
            Card(
              child: ListTile(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                leading: CircleAvatar(
                  backgroundColor: Colors.blue[300],
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    foregroundImage: AssetImage('asserts/i_icon.png'),
                    radius: 27,
                  ),
                  radius: 30,
                ),
                title: Text(
                  "Inflamação",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                subtitle: Text(
                  "Objetivo: Controlar a inflamação, infecção, Biofilme.",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              elevation: 5,
            ),
            Card(
              child: ListTile(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                leading: CircleAvatar(
                  backgroundColor: Colors.green[300],
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    foregroundImage: AssetImage('asserts/m_icon.png'),
                    radius: 27,
                  ),
                  radius: 30,
                ),
                title: Text(
                  "Umidade/exsudato",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                subtitle: Text(
                  "Objetivo: Controlar a umidade/exsudato da lesão.",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              elevation: 5,
            ),
            Card(
              child: ListTile(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                leading: CircleAvatar(
                  backgroundColor: Colors.red[300],
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    foregroundImage: AssetImage('asserts/e_icon.png'),
                    radius: 27,
                  ),
                  radius: 30,
                ),
                title: Text(
                  "Bordas",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                subtitle: Text(
                  "Objetivo: redução do tamanho da ferida, epitelização.",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              elevation: 5,
            ),
            Card(
              child: ListTile(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                leading: CircleAvatar(
                  backgroundColor: Colors.orange[300],
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    foregroundImage: AssetImage('asserts/r_icon.png'),
                    radius: 27,
                  ),
                  radius: 30,
                ),
                title: Text(
                  "Regeneração/Reparação",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                subtitle: Text(
                  "Objetivo: redução do tamanho da ferida, epitelização.",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              elevation: 5,
            ),
            Card(
              child: ListTile(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                leading: CircleAvatar(
                  backgroundColor: Colors.black38,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    foregroundImage: AssetImage('asserts/s_icon.png'),
                    radius: 27,
                  ),
                  radius: 30,
                ),
                title: Text(
                  "Fatores sociais",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                subtitle: Text(
                  "Objetivo: educação do paciente, família e cuidador; escuta ativa; compreensão do sistema de crenças.",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              elevation: 5,
            ),
          ],
        ),
      ),
    );
  }
}
