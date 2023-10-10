import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Save Guard'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        // ignore: avoid_unnecessary_containers
        body: Container(
            child: const Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Center(
                    child: Icon(Icons.lock_open, size: 200),
                  ),
                ),
                Text(
                  'The Door is Locked',
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
            Column(
                // ADD GRAPH HERE
                ),
          ],
        )));
  }
}
