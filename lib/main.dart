import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: OrientationBuilder(builder: (context, orientation) {
      if (orientation == Orientation.portrait) {
        return _portraitMode();
      } else {
        return _landscapeMode();
      }
    }));
  }
}

class _portraitMode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      drawer: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.white54,
        child: Column(
          children: [
            Text("FIRST ELEMENT"),
            Text("SECOND ELEMENT"),
            Text("THIRD ELEMENT"),
            Text("FORTH ELEMENT"),
            Text("FIFTH ELEMENT"),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("SECOND ASIGNMENT"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}

class _landscapeMode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SECOND ASIGNMENT"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(children: [
                Text("FIRST ELEMENT"),
                Text("SECOND ELEMENT"),
                Text("THIRD ELEMENT"),
                Text("FORTH ELEMENT"),
                Text("FIFTH ELEMENT"),
              ]),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
