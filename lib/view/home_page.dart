import 'package:flutter/material.dart';
import 'package:projeto_perguntas/components/cards.dart';

import 'package:projeto_perguntas/controller/controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = ControllerHomePage();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 10),
          margin: const EdgeInsets.only(top: 20),
          child: Text(
            _controller.perguntas(),
            textAlign: TextAlign.center,
          ),
        ),
        Visibility(
          visible: _controller.posicaoPerguntasExiste(),
          child: Container(
            height: 300,
            margin: const EdgeInsets.only(top: 20),
            child: ListView.builder(
              itemCount: _controller.posicaoPerguntasExiste()
                  ? _controller.listRes[_controller.posicaoList].length
                  : null,
              itemBuilder: (ctx, i) {
                return CardComponent(
                  _controller.listRes[_controller.posicaoList][i],
                  color: (i / 2 == 0) ? Colors.grey[200] : Colors.grey[300],
                  onTap: () {
                    if (_controller.posicaoPerguntasExiste()) {
                      setState(() {
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
            child: MaterialButton(
              color: Colors.blue,
              onPressed: () {
                setState(() {
                  _controller.posicaoList = 0;
                });
              },
              child: const Text(
                'Voltar',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}
