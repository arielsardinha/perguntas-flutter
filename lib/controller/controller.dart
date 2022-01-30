class Controller {
  var posicaoList = 0;
  var notaTotal = 0;
  final List<Map<String, dynamic>> lista = const [
    {
      'pergunta': 'Arroz',
      'respostas': [
        {'resposta': 'Teatro', 'pontuacao': 0},
        {'resposta': 'Comida', 'pontuacao': 10},
      ],
    },
    {
      'pergunta': 'Arroz',
      'respostas': [
        {'resposta': 'Teatro', 'pontuacao': 0},
        {'resposta': 'Comida', 'pontuacao': 10},
      ],
    },
    {
      'pergunta': 'Arroz',
      'respostas': [
        {'resposta': 'Teatro', 'pontuacao': 0},
        {'resposta': 'Comida', 'pontuacao': 10},
      ],
    },
  ];

  String perguntas() => lista.isNotEmpty
      ? posicaoPerguntasExiste()
          ? "O que é ${lista[posicaoList]['pergunta']} ?"
          : 'Parabens por responder todas as perguntas'
      : 'Nenhuma Pergunta';

  bool posicaoPerguntasExiste() => lista.length > posicaoList;
}
