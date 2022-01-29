class ControllerHomePage {
  final listPerguntas = <String>['Arroz', 'Computador'];
  final listRes = <List<String>>[
    ['Teatro', 'Comida'],
    ['Cavalo', 'Dispositivo Eletrônico']
  ];
  var posicaoList = 0;

  String perguntas() => listPerguntas.isNotEmpty
      ? posicaoPerguntasExiste()
          ? "O que é ${listPerguntas[posicaoList]} ?"
          : 'Parabens por responder todas as perguntas'
      : 'Nenhuma Pergunta';

  bool posicaoPerguntasExiste() => listPerguntas.length > posicaoList;
}
