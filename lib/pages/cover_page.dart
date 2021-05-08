import 'package:flutter/material.dart';
import 'package:timers_app/widgets/expandedCustom.dart';

class CoverPage extends StatefulWidget {
  @override
  _CoverPageState createState() => _CoverPageState();
}

class _CoverPageState extends State<CoverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Text("Coberturas"),
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
            ExpandedCustom(
              Text(
                "- Tela de silicone:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  ExpandedCustom(
                    Text(
                      "Composição:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Text(
                      "Tela de poliamida com silicone suave, transparente.",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Mecanismo de ação:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "-Não aderente ao leito da ferida",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Não provoca dor a remoção",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Proporciona meio úmido",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Possibilita menor número de trocas de curativos",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Adapta-se aos contornos do corpo",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Indicação:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "-Epidermolise bolhosa",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Lesão por fricção",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Úlceras planas de diversas etiologias",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Áreas doadoras de enxerto cutâneo",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Áreas receptoras de enxerto cutâneo",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Contraindicação:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "-Feridas cavitárias",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Feridas infectadas",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Feridas com grande quantidade de exsudato",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Áreas doadoras de enxerto cutâneo",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Áreas receptoras de enxerto cutâneo",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Frequência de troca:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Text(
                      "Pode permanecer por até 14 dias no leito da lesão.",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
            ExpandedCustom(
              Text(
                "- Tela de acetato impregnada com soluções:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  ExpandedCustom(
                    Text(
                      "Composição:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "-Compressa estéril, não aderente, constituída por um rolo ou cartela individual de malha de acetado de celulose (rayon)",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Impregnada com soluções como: emulsão de petrolatum, parafina, ácidos graxos essenciais (AGE), óleo de melaleuca, prata. ",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Pode vir com interface de silico",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Indicação:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "-Mantém o meio úmido",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Não adere ao leito da ferida",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Promove o equilíbrio da umidade da lesão",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Permite que o exsudato seja absorvido pelo curativo secundário",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Contraindicação:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "-Feridas com tecido desvitalizado ou necrose",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Feridas infectadas",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Pacientes com hipersensibilidade a hidrocarbonetos saturados derivados de petróleo, pois pode causar irritação e reações granulomatosas",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Frequência de troca:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Text(
                      "Recomenda-se troca a cada 72 horas e/ou de acordo com a saturação do curativo secundário e a possível aderência da cobertura ao leito da lesão.",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
            ExpandedCustom(
              Text(
                "- Hidrocoloide:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  ExpandedCustom(
                    Text(
                      "Composição:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "-Camada externa de poliuretano",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Camada interna composta por gelatina pectina e carboximetilcelulose sódica",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Indicação:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "-Feridas abertas não infectadas",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Prevenção de lesão por pressao",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Proteção da área perilesional e para efluentes de estomas",
                          style: TextStyle(fontSize: 12),
                        ),
                       
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Contraindicação:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "-Feridas muito exsudativas",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Feridas infectadas",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Feridas cavitárias",
                          style: TextStyle(fontSize: 12),
                        ),
                         SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Feridas com tecido desvitalizado ou necrose",
                          style: TextStyle(fontSize: 12),
                        ),
                         SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Queimaduras de terceiro grau",
                          style: TextStyle(fontSize: 12),
                        ),
                          SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Pacientes com sensibilidade aos componentes do produto",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Frequência de troca:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Text(
                      "No máximo a cada 7 dias e/ou sempre que houver saturação ou deslocar",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Beneficios:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "-Mantém o meio úmido",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Promove o desbridamento autolítico",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Reduz o atrito e o microclima na prevenção de lesão por pressão",
                          style: TextStyle(fontSize: 12),
                        ),
                         SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Estimula a angiogênese",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),


            ExpandedCustom(
              Text(
                "- Ácido Graxo Essencial (AGE):",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  ExpandedCustom(
                    Text(
                      "Composição:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "-Óleo de origem vegetal composto pelos ácidos linoleico, linolenico, caprílico, caprico; vitaminaA, E + lectina de soja",
                          style: TextStyle(fontSize: 12),
                        ),
                       
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Indicação:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "-Queimaduras superficiais",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Úlceras de qualquer etiologia com ou sem infeção",
                          style: TextStyle(fontSize: 12),
                        ),                       
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Contraindicação:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "-Hipergranulação",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Em casos de hipersensibilidade",
                          style: TextStyle(fontSize: 12),
                        ),
                        
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Frequência de troca:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Text(
                      "Recomenda-se trocar no máximo a cada 24 horas ou sempre que o curativo secundário estiver saturado.",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Beneficios:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "-Mantém o meio úmido",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Promove o desbridamento autolítico",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Acelera o processo de granulação tecidual",
                          style: TextStyle(fontSize: 12),
                        ),
                         SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Auxilia o desbridamento autolitico",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "-Pode ser utilizado em qualquer fase de cicatrização",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),


            ExpandedCustom(
              Text(
                "- Hidrogel:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  ExpandedCustom(
                    Text(
                      "Composição:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "-Gel transparente incolor, composto por água (77,7%), carboximetilcelulose – CMC (2,3%) e propilenoglicol – PPG (20%)",
                          style: TextStyle(fontSize: 12),
                        ),
                       
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Indicação:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "-Remover crostas e tecidos desvitalizados de feridas abertas",
                          style: TextStyle(fontSize: 12),
                        ),                     
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Contraindicação:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "-Utilizar em pele íntegra e incisões cirúrgicas fechadas.",
                          style: TextStyle(fontSize: 12),
                        ),
                        
                        
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Frequência de troca:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Text(
                      "Feridas infectadas (a cada 24 horas); necrose (a cada 72 horas).",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                 
                ],
              ),
            ),


            ExpandedCustom(
              Text(
                "- Espumas:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  ExpandedCustom(
                    Text(
                      "Composição:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Almofada de espuma composta de camadas sobrepostas de não tecido e hidropolímero e revestida por poliuretano e silicone.",
                          style: TextStyle(fontSize: 12),
                        ),
                       
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Indicação:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "-Controle da umidade no leito da ferida. Quando adicionadas a substancias surfactantes e umectantes promovem desbridamento autolítico. Quando impregnadas com Prata ou PHMB promovem tratamento da infecção ou biofime.",
                          style: TextStyle(fontSize: 12),
                        ),                     
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Contraindicação:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "-Queimaduras de terceito grau; lesões com vasculite ativa;",
                          style: TextStyle(fontSize: 12),
                        ),
                        
                        
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Frequência de troca:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Text(
                      "A cada sete dias ou sempre que houver presença de fluído da ferida nas bordas da espuma;",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                 
                ],
              ),
            ),


             ExpandedCustom(
              Text(
                "- Hidrofibras:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  ExpandedCustom(
                    Text(
                      "Composição:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Fibras de carboximetilcelulose hidrodesbridantes (ou fibras poliabsorventes); pode estar associado a 1,2% de prata iônica ou polímeros de poliacrilato de amônia envoltas em um núcleo acrílico.",
                          style: TextStyle(fontSize: 12),
                        ),
                       
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Indicação:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "-Feridas exsudativas de diversas etiologias; desbridamento autolítico; Abrasões, lacerações e cortes; Queimaduras de 2º grau e 3º grau após desbridamento cirúrgico e com exsudato.",
                          style: TextStyle(fontSize: 12),
                        ),                     
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Contraindicação:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "-Não usar em necrose de coagulação;",
                          style: TextStyle(fontSize: 12),
                        ),
                        
                        
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Frequência de troca:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Text(
                      "Até 7 dias; Pode permanecer até 14 dias em casos de queimaduras;",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                 
                ],
              ),
            ),


            ExpandedCustom(
              Text(
                "- Alginato de cálcio:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  ExpandedCustom(
                    Text(
                      "Composição:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Fibras de não tecido, derivado de algas marinhas, composto pelos ácidos gulurônico e manurônico, com íons de cálcio e sódio incorporado às fibras. Pode ser associado a prata.",
                          style: TextStyle(fontSize: 12),
                        ),
                       
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Indicação:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "-Feridas abertas, com perda de tecido, lesões cavitárias ou profundas, sangrantes, altamente exsudativas, com ou sem infecção.",
                          style: TextStyle(fontSize: 12),
                        ),                     
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Contraindicação:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "-feridas superficiais ou com pouca quantidade de exsudato e lesões por queimaduras.",
                          style: TextStyle(fontSize: 12),
                        ),
                        
                        
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Frequência de troca:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Text(
                      "Trocar sempre que estiver saturado; em feridas infectadas a cada 24 horas; feridas limpas e com sangramento a cada 48 ou 72h ou de acordo com a saturação;",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                 
                ],
              ),
            ),


            ExpandedCustom(
              Text(
                "- Papaína:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  ExpandedCustom(
                    Text(
                      "Composição:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "7 diferentes aminoácidos e por enzimas proteolíticas e peroxidases, extraídas do látex do mamão papaia (Carica papaya). Pode ser utilizada na forma de pó, gel ou pasta (creme). Em pó deve ser diluída imediatamente antes da execução do curativo e age por 20 minutos e, em gel ou pasta por 24 horas.",
                          style: TextStyle(fontSize: 12),
                        ),
                       
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Indicação:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "-Desbridamento enzimático; 2% a 4% feridas secas ou com tecido de granulação; 4% a 6% feridas com necrose de liquefação, exsudato purulento e/ou infecções; 8% a 10% feridas com necrose de coagulação após escarotomia;",
                          style: TextStyle(fontSize: 12),
                        ),                     
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Contraindicação:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "-Pacientes alérgicos ao látex; Não aplicar em contato com metais, devido ao poder de oxidação.",
                          style: TextStyle(fontSize: 12),
                        ),
                        
                        
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Frequência de troca:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Text(
                      "No máximo a cada 24 horas ou de acordo com a saturação do curativo secundário.;",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                 
                ],
              ),
            ),


            ExpandedCustom(
              Text(
                "- Colagenase:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  ExpandedCustom(
                    Text(
                      "Composição:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Colagenase, clostridiopeptidase A e enzimas proteolíticas.",
                          style: TextStyle(fontSize: 12),
                        ),
                       
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Indicação:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "-Desbridamento enzimático;",
                          style: TextStyle(fontSize: 12),
                        ),                     
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Contraindicação:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "-Feridas com cicatrização por primeira intenção; pacientes com hipersensibilidade à Colagenase ou a qualquer componente da formulação.",
                          style: TextStyle(fontSize: 12),
                        ),
                        
                        
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Frequência de troca:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Text(
                      "A cada 24 horas;",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                 
                ],
              ),
            ),

            ExpandedCustom(
              Text(
                "- Fibrinosilina:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  ExpandedCustom(
                    Text(
                      "Composição:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Emoliente de origem bovina, composto de fibrolisina desoxirribonuclease a 1% de carafenicol.",
                          style: TextStyle(fontSize: 12),
                        ),
                       
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Indicação:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "-Desbridamento enzimático;",
                          style: TextStyle(fontSize: 12),
                        ),                     
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Contraindicação:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "-Feridas com cicatrização por primeira intenção e reação alérgica em pessoas bovinas a substâncias bovinas.",
                          style: TextStyle(fontSize: 12),
                        ),
                        
                        
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Frequência de troca:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Text(
                      "A cada 24 horas;",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                 
                ],
              ),
            ),


            ExpandedCustom(
              Text(
                "- Sulfadiazina de prata:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  ExpandedCustom(
                    Text(
                      "Composição:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sulfadiazina de prata a 1% hidrofílico.",
                          style: TextStyle(fontSize: 12),
                        ),
                       
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Indicação:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "-Prevenção e tratamento de feridas com grande potencial de infecção generalizada (sepse): queimaduras, úlceras venosas, lesões por pressão e feridas cirúrgicas infectadas.",
                          style: TextStyle(fontSize: 12),
                        ),                     
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Contraindicação:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "-Mulheres grávidas nos últimos três meses de gestação (tem ação teratogênica), crianças menores de 2 meses de idade e prematuros.",
                          style: TextStyle(fontSize: 12),
                        ),
                        
                        
                      ],
                    ),
                  ),
                  ExpandedCustom(
                    Text(
                      "Frequência de troca:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Text(
                      "No máximo a cada 12 horas ou quando a cobertura secundária estiver saturada.",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                 
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
