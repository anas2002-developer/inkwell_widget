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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("first flutter project"),
        ),
        body: Center(
          child: InkWell(

            onTap: (){
              print("Container tap");
            },
            onDoubleTap: (){
              print("Container double-tap");
            },
            onLongPress: (){
              print("Container long-press");
            },


            child: Container(
              color: Colors.amber,
              height: 400,
              width: 400,
              child: Center(
                  child: InkWell(
                    onTap: (){
                      print("Play tap");
                    },
                      onDoubleTap: (){
                        print("Play double-tap");
                      },
                      onLongPress: (){
                        print("Play long-press");
                      },
                      child: Text("Play",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),))),
            ),
          ),
        )
    );
  }
}
