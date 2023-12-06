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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
            headline1: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            subtitle1: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          )),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Hello"),
      ),
      body: Column(
        children: [
          // Text( "Hello World!",style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
          Text(
            "Hello India!",
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: Colors.orange),
          ),
          Text(
            "Hello India!",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Text("Hello India!", style: Theme.of(context).textTheme.headline1!)
        ],
      ),
    );
  }
}
