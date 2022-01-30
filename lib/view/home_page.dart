import 'package:flutter/material.dart';
import 'package:projeto_perguntas/components/cards.dart';

import 'package:projeto_perguntas/controller/controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = Controller();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 10),
          margin: const EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Text(
            _controller.perguntas(),
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Visibility(
          visible: _controller.posicaoPerguntasExiste(),
          child: Container(
            height: 300,
            margin: const EdgeInsets.only(top: 20),
            child: ListView.builder(
              itemCount: _controller.posicaoPerguntasExiste()
                  ? (_controller.lista[_controller.posicaoList]['respostas']
                          as List)
                      .length
                  : null,
              itemBuilder: (ctx, i) {
                return CardComponent(
                  (_controller.lista[_controller.posicaoList]['respostas']
                      as List)[i]['resposta'],
                  color: (i / 2 == 0) ? Colors.grey[200] : Colors.grey[300],
                  onTap: () {
                    if (_controller.posicaoPerguntasExiste()) {
                      setState(() {
                        _controller.notaTotal +=
                            (_controller.lista[_controller.posicaoList]
                                ['respostas'] as List)[i]['pontuacao'] as int;
                        _controller.posicaoList++;
                      });
                    }
                  },
                );
              },
            ),
          ),
          replacement: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Text(
                    "Você acertou ${_controller.notaTotal} de ${_controller.lista.length} questões"),
                const SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  color: Colors.blue,
                  onPressed: () {
                    setState(() {
                      _controller.posicaoList = 0;
                      _controller.notaTotal = 0;
                    });
                  },
                  child: const Text(
                    'Reiniciar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
