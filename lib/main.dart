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
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Añadido para espacio entre cada widget
          children: [
            const Text(
              'Encabezado de SafeArea',
              style: TextStyle(fontSize: 30),
            ),
            
            Expanded(
              child: Container(
                 padding: EdgeInsets.all(25),
                margin: const EdgeInsets.all(10), // Añadido margen para espacio
                color: Colors.pink,
                child: const Center(
                  child: Text(
                    ' Expanded',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ),
              ),
            ),
            
            Flexible(
              child: Container(
                margin: const EdgeInsets.all(10), // Añadido margen para espacio
                color: Colors.green,
                child: const Center(
                  child: Text(
                    ' Flexible',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ),
              ),
            ),
            
            const Text(
              'Pie de página',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}

