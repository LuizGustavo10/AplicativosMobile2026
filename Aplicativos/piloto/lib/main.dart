import 'package:flutter/material.dart';

//método principal que inicia o app
void main() {
  runApp(const MyApp());
}

//myapp é como se fosse o head, tem configurações como o tipo de tema e titulo
//Classe myapp herda o comportamento StatelessWidget, ou sejá tudo é estático
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // MaterialApp é uma biblioteca de componentes
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Técnico Informática',
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: const Color.fromARGB(255, 42, 149, 231),
        ),
      ),
      home: const MyHomePage(title: 'Olá mundo! '),
    );
  }
}

//Classe myhomepage é como se fosse o corpo da nossa aplicação
//ela herda o comportamente StatefulWidget, que é dinamico, tem mudanças em tela
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    //Scaffol é o alicerce
    return Scaffold(
      //app bar é a parte superior
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      //body é o corpo,
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('Eu sou o Batman🦇', style: TextStyle(color: Colors.indigo, fontSize: 50),),
            const Text('Você pressionou o botão:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
