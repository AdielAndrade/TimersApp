import 'package:flutter/material.dart';
import 'package:timers_app/widgets/expandedCustom.dart';

class AssessmentPage extends StatefulWidget {
  @override
  _AssessmentPageState createState() => _AssessmentPageState();
}

class _AssessmentPageState extends State<AssessmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Text("Avaliação"),
      ),
      body: body(),
    );
  }

  Widget body(){
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("TIPOS DE TECIDOS PRESENTES NO LEITO DA FERIDA:" , style: TextStyle(fontWeight: FontWeight.bold,  fontSize: 18),),
            ExpandedCustom(
              Text("Tecidos viáveis:" , style: TextStyle(fontWeight: FontWeight.bold),),
              Column(
                children: [
                  ExpandedCustom(
                    Text("Epitelização:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                    Text("Tecido recém-cicatrizado, com coloração rosa clara ou avermelhada, brilhante, aparece no processo final da cicatrização.", style:TextStyle(fontSize: 12),)
                  ),
                  ExpandedCustom(
                    Text("Granulação:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                    Text("É composto por tecido conjuntivo e capilares recém- formados. Aparência rosada, úmida, granular (aspecto de framboesa). É um tecido vital para a cicatrização. É formado por fibroblastos e novos vasos sanguíneos. É indolor mas sangrante ao toque. Deve ser preservado durante a limpeza da lesão.", style:TextStyle(fontSize: 12),)
                  )
                ],
              )
               ),
            ExpandedCustom(
              Column(
                children: [
                  Text("Tecidos desvitalizados ou inviável:" , style: TextStyle(fontWeight: FontWeight.bold),),
                  
                ],
              ),
              Column(
                children: [
                  Text("Tecido morto, que perdeu suas propriedades físicas e atividade biológica, atrasa a cicatrização, proporciona meio adequado para crescimento de microorganismos, prolonga a resposta inflamatória e cria barreira para formação do tecido de granulação e epitelização. Além de ser fator predisponente para formação de biofilmes."),
                  ExpandedCustom(
                    Text("Necrose de liquefação ou esfacelo:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                    Text("Tecido necrótico/desvitalizado, úmido, avascular, amolecido; pode ser branco, amarelado, acastanhado ou verde; formado por bactérias, fibrina, elastina, colágeno e leucócitos, microorganismos e materiais proteicos. Pode estar frouxa ou firmemente aderido ao leito.", style:TextStyle(fontSize: 12),)
                  ),
                  ExpandedCustom(
                    Text("Necrose de coagulação ou Escara:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                    Text("Tecido necrótico, preto ou marrom, pode estar frouxa ou firmemente aderido ao leito; pode apresentar consistência sólida ou amolecida.", style:TextStyle(fontSize: 12),)
                  ),
                  ExpandedCustom(
                    Text("Necrose gangrenosa:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                    Text("Resulta da necrose de coagulação. Afeta extremidades inferiores e tem como fatores a isquemia e a ação de microrganismos. Pode ser úmida ou seca, com forte odor ocasionado pela formação de bolhas gasosas. Não deve ser desbridada!! Requer avaliação de um cirurgião vascular.", style:TextStyle(fontSize: 12),)
                  ),
                ],
              )
               )   
          ],
        ),
      ),
    );
  }
}
