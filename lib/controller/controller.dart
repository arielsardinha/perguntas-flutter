import 'package:projeto_perguntas/controller/list.dart';

class Controller extends Perguntas {
  var posicaoList = 0;
  var notaTotal = 0;

  String perguntas() => lista.isNotEmpty
      ? posicaoPerguntasExiste()
          ? lista[posicaoList]['pergunta'] as String
          : 'Parabens por responder todas as perguntas'
      : 'Nenhuma Pergunta';

  bool posicaoPerguntasExiste() => lista.length > posicaoList;
}
