import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: DemoBuildFunction(),
    );
  }
}
class DemoBuildFunction extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text("Demo build funtion")
      ),
      body: GrandParent(child: Parent(child:Column(
        children: <Widget>[
          ContextSon(),
          ContextDaughter()
        ],
      ))),
    );
  }
}
class GrandParent extends StatelessWidget {
  Widget child;
  GrandParent({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}
class Parent  extends StatelessWidget {
  Widget child;
  Parent({this.child});

  String methodSon(){
//      print("Method son");
    return "Method Son";
  }
  String methodDaughter(){
//    print("Method daughter");
    return "Method daughter";

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}

class ContextSon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Parent myParent = context.ancestorWidgetOfExactType(Parent);
    return Container(
      child:Text(myParent.methodSon()),
    );
  }
}
class ContextDaughter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Parent myParent = context.ancestorWidgetOfExactType(Parent);
    return Container(
      child:Text(myParent.methodDaughter()),
    );
  }
}
