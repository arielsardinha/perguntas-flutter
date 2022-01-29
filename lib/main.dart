import 'package:flutter/material.dart';
import 'package:projeto_perguntas/view/home_page.dart';
import 'package:projeto_perguntas/view/menu.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perguntas',
      theme: ThemeData(primaryColor: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: const Drawer(
          child: MenuPage(),
        ),
        appBar: AppBar(
          title: const Center(
            child: Text('Perguntas'),
          ),
        ),
        body: const HomePage(),
      ),
    );
  }
}
