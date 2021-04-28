class QuizModel {
  String alt_A;
  String alt_B;
  String alt_C;
  String alt_D;
  String question;
  String image = "";
  String correct;
  String select = "";

  QuizModel(this.question, this.alt_A, this.alt_B, this.alt_C, this.alt_D,
      this.correct, this.image);
}

List<QuizModel> t_quiz = [
  QuizModel(
      "Qual o tipo de tecido que está presente no leito dessa lesão?",
      "Tecido de granulação",
      "Tecido de epitelização",
      "Necrose de coagulação ou escara",
      "Necrose de liquefação ou esfacelo",
      "Necrose de liquefação ou esfacelo",
      "asserts/LETRAT_NECROSE DE LIQUEFACAO (2).jpg"),
  QuizModel(
    "Qual o tipo de tecido que está presente no leito dessa lesão?",
    "Tecido de granulação",
    "Tecido de epitelização",
    "Necrose de coagulação ou escara",
    "Necrose de liquefação ou esfacelo",
    "Necrose de coagulação ou escara",
    "asserts/LETRAT_DESBRIDAMENTO.jpg",
  ),
  QuizModel(
      "Qual o tipo de tecido que está presente no leito dessa lesão?",
      "Tecido de granulação",
      "Tecido de epitelização",
      "Necrose de coagulação ou escara",
      "Necrose de liquefação ou esfacelo",
      "Tecido de granulação",
      "asserts/LETRAT_hipergranulaçao.jpg"),
  QuizModel(
      "Qual o tipo de tecido que está presente no leito dessa lesão?",
      "Tecido de granulação",
      "Tecido de epitelização",
      "Necrose de coagulação ou escara",
      "Necrose de liquefação ou esfacelo",
      "Necrose de liquefação ou esfacelo",
      "asserts/LETRAT_Necrose de liquefaçao.jpg"),
  QuizModel(
      "Qual o tipo de tecido que está presente no leito dessa lesão?",
      "Tecido de granulação",
      "Necrose de coagulação ou escara",
      "Necrose de liquefação ou esfacelo",
      "Necrose gangrenosa ou gangrena",
      "Necrose gangrenosa ou gangrena",
      "asserts/LETRAT_NECROSE GANGRENOSA.jpg"),
  QuizModel(
      "O tecido recém-cicatrizado, com coloração rosa clara ou avermelhada, brilhante que prolifera rapidamente a partir das bordas é chamado de:",
      "Tecido de granulação",
      "Tecido de epitelização",
      "Necrose de coagulação ou escara",
      "Necrose de liquefação ou esfacelo",
      "Tecido de epitelização",
      ""),
  QuizModel(
      "Paciente idoso, 65 anos, acamado, apresenta lesão por pressão localizada na região sacro-glútea. Qual o tipo de tecido que está presente no leito dessa lesão?",
      "Tecido de granulação",
      "Tecido de epitelização",
      "Necrose de coagulação ou escara",
      "Necrose de liquefação ou esfacelo",
      "Necrose de coagulação ou escara",
      "asserts/LetraT_necrose de coagulacao.jpg"),
  QuizModel(
      "A escolha do método deve considerar, além do tipo de tecido, de materiais biológicos presentes no leito da ferida e da quantidade de exsudato, a habilidade técnica do profissional. O tipo de desbridamento que estimula a ação de enzimas endógenas e atividade macrofágica, mantém o meio úmido, promovendo a quebra natural do tecido necrótico, é chamado de:",
      "Desbridamento mecânico",
      "Desbridamento enzimático",
      "Necrose de coagulação ou escara",
      "Desbridamento autolítico",
      "Desbridamento biológico",
      ""),
  QuizModel("A colagenase promove desbridamento do tipo:", "Mecânico",
      "Enzimático", "Autolítico", "Biológico", "Enzimático", ""),
  QuizModel(
      "As espumas de poliuretano e hidrofibras promovem desbridamento do tipo:",
      "Mecânico",
      "Enzimático",
      "Autolítico",
      "Biológico",
      "Enzimático",
      ""),
];
