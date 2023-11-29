import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Row(
          children: [
            Padding(padding: const EdgeInsets.only()),
            Text('Flutter: Primeiros Passos'),
          ],
        )),
        body: ListView(
          children: [
              ListBox(Colors.white, Colors.pinkAccent, Colors.blue, Icons.people),
              ListBox(Colors.pink, Colors.purple, Colors.blueAccent, Icons.person),
              ListBox(Colors.pinkAccent, Colors.amber, Colors.lightBlue, Icons.people),
              ListBox(Colors.purpleAccent, Colors.white, Colors.green, Icons.people),
          ],
        ),
      ),
    );
  }
}

class ListBox extends StatelessWidget {
  final Color cor1;
  final Color cor2;
  final Color cor3;

  final IconData icone;

  const ListBox(
      this.cor1,
      this.cor2,
      this.cor3,

      this.icone, {
        Key? key
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        height: 140,
        child: Row(
          children: [
            Container(
              height: 140,
              width: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(20),
                color: cor1,
              ),
            ),
            Container(
              height: 140,
              width: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(20),
                color: cor2,
              ),
              child: Icon(icone),
            ),
            Container(
              height: 140,
              width: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(20),
                color: cor3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


