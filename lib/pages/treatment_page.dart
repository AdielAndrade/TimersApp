import 'package:flutter/material.dart';
import 'package:timers_app/widgets/expandedCustom.dart';

class TreatmentPage extends StatefulWidget {
  @override
  _TreatmentPageState createState() => _TreatmentPageState();
}

class _TreatmentPageState extends State<TreatmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Text("Tratamento"),
      ),
      body: body(),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Lesões com tecido desvitalizado ou necrótico é recomendável realizar o desbridamento.",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            ExpandedCustom(
              Text(
                "- Objetivo do desbridamento:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Remoção de tecido inviável ou necrótico.",
                style: TextStyle(),
              ),
            ),
            ExpandedCustom(
                Text(
                  "- Tipos de desbridamento:",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Column(
                  children: [
                    ExpandedCustom(
                        Text(
                          "Instrumental",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        Column(
                          children: [
                            Text(
                              "é realizado com material cortante, como lâminas de bisturi e tesouras. Procedimento realizado exclusivamente por médicos e enfermeiros, exige dos profissionais competência, conhecimento das estruturas anatômicas e dos riscos, segurança e habilidade.",
                              style: TextStyle(fontSize: 12),
                            ),
                            ExpandedCustom(
                              Text(
                                "Contraindicação:",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                              Text(
                                "Insuficiência arterial e as coagulopatias.",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                            ExpandedCustom(
                              Text(
                                "Riscos:",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                              Text(
                                "Hemorragia, lesão de tendões e ossos",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        )),
                    ExpandedCustom(
                        Text(
                          "Mecânico",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        Column(
                          children: [
                            Text(
                              "Método não seletivo, pois retira também o tecido viável. Pode ser realizado com a utilização das seguintes técnicas:",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "- Fricção: realizada com gazes ou esponjas umedecidas em soluções de limpeza;",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "- Úmido-seco: consiste em cobrir a ferida com gaze seca, aguardar que esta fique aderida ao leito para retirá-la;",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "- Irrigação: realizada com soro morno em jato. Hidroterapia: realizada em tanques com turbilhonamento.",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        )),
                    ExpandedCustom(
                        Text(
                          "Autolítico",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        Column(
                          children: [
                            Text(
                              "Desbridamento natural, estimula a ação de enzimas endógenas, como proteases e colagenases, e atividade macrofágica do próprio organismo. Mantém o meio úmido e temperatura de 37º, promovendo a quebra natural do tecido necrótico. Método atraumático.",
                              style: TextStyle(fontSize: 12),
                            ),
                            ExpandedCustom(
                                Text(
                                  "Desvantagem:",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                Text(
                                  "Exige um tempo prolongado para o desbridamento.",
                                  style: TextStyle(fontSize: 12),
                                )),
                            ExpandedCustom(
                                Text(
                                  "Produtos:",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                Text(
                                  "Ácidos graxos essenciais, Hidrogéis, hidrocolóides, Hidrofibra, Iodo Cadexómero, espumas hidrofílicas, hidropolímeros, coberturas antiaderentes.",
                                  style: TextStyle(fontSize: 12),
                                )),
                            ExpandedCustom(
                                Text(
                                  "Contraindicação:",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                Text(
                                  "Não deve ser utilizado em feridas infectadas.  Pode levar ao maceramento da lesão.",
                                  style: TextStyle(fontSize: 12),
                                )),
                          ],
                        )),
                    ExpandedCustom(
                        Text(
                          "Enzimático",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        Text(
                          "Escolha de enzimas exógenas para aplicação tópica baseada no tipo de tecido presente e pH da pele. Produtos: Colagenase (pH 6 a 8), fibrinolisina (pH 7 a 8), Papaína (pH 3 a 12)",
                          style: TextStyle(fontSize: 12),
                        )),
                    ExpandedCustom(
                        Text(
                          "Biológico ou larval",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        Text(
                          "Consiste na utilização larvas de moscas esterilizadas das espécies  Lucilia sericata ou Phaenicia sericata colocadas no leito da ferida. Estas larvas secretam enzimas proteolíticas que digerem o tecido necrótico para ingerir o liquefeito. A terapia requer um tempo prolongado para o desbridamento e exige a disponibilidade das larvas.",
                          style: TextStyle(fontSize: 12),
                        )),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
