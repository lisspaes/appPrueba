import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('app'),
            ),
            body: Center(
                child: Column(
              children: <Widget>[
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const InfiScroll()),
                      );
                    },
                    child: const Text("Scroll")),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Alert()),
                    );
                  },
                  child: const Text("Alerta"),
                ),
              ],
            ))));
  }
}

class InfiScroll extends StatelessWidget {
  const InfiScroll({super.key});

  @override
  Widget build(BuildContext context) {
    var url = "https://picsum.photos/id/1/500/300";
    return Scaffold(
      body: Center(
          child: Column(
        children: <Widget>[
          Image.network(url),
          FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("<-")),
        ],
      )),
    );
  }
  // State<infiScroll> createState() => _infiScrollState();
}

class Alert extends StatelessWidget {
  const Alert({super.key});
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
                  title: const Text("Alerta"),
                  content: const Text("Esta es una alerta de prueba"),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                )),
        child: const Text("Show"));
  }
}
