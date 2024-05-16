import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:Container(
        height: 100,
        width: 400,
        transform: Matrix4.rotationZ(.3),
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 4),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [new BoxShadow(color: Colors.green, offset: new Offset(6, 6),)],
        ),
        child: Text('Hey there Text me',style: TextStyle(fontSize: 20),),
      )
    );
  }
}
// Container({
//   Key key,
//   EdgeInsetsGeometry padding,
//   Color color,
//   double height,
//   double width,
//   Decoration decoration,
//   Decoration foregroundDecoration,
//   BoxConstraints boxConstraints,
//   Widget child,
//   Clip clipBehavior: Clip.none
// })