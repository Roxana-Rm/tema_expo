import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App con SafeArea, Expanded y Flexible'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('SafeArea'),
              onTap: () {
                Navigator.pop(context); // Cerrar el drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SafeAreaWidget(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Expanded'),
              onTap: () {
                Navigator.pop(context); // Cerrar el drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExpandedWidget(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Flexible'),
              onTap: () {
                Navigator.pop(context); // Cerrar el drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FlexibleWidget(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Hola',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}

class SafeAreaWidget extends StatelessWidget {
  final estilo = TextStyle(fontSize: 20);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: ListView(
            children: List.generate(
                100,
                (i) => Text(
                      '$i -Hola',
                      style: estilo,
                    ))),
      ),
    );
  }
}

class ExpandedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Expanded Widget'),
        ),
        body: Row(
          children: <Widget>[
            Cuadrado(Colors.pink),
            Expanded(flex: 5, child: Cuadrado(Colors.green)),
            Expanded(flex: 3, child: Cuadrado(Colors.purple)),
            Cuadrado(Colors.pink),
          ],
        ));
  }
}

class Cuadrado extends StatelessWidget {
  final Color color;
  Cuadrado(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 50.0,
        height: 50.0,
        decoration: BoxDecoration(color: this.color));
  }
}

class FlexibleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flexible Widget'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.pink,
            height: 100,
            width: double.infinity,
            child: Center(
              child: Text(
                ' 1',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          Flexible(
            flex: 3, // Puedes ajustar el flex según tus necesidades
            child: Container(
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Contenido del Flexible Widget',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.pink,
            height: 200,
            width: double.infinity,
            child: Center(
              child: Text(
                ' 2',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
