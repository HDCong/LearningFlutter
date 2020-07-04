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
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login page'),
        ),
        body: Container(
            padding: EdgeInsets.all(50),
            child: Column(children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.email),
                    hintText: 'example@example.com',
                    labelText: 'Email'),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    icon: Icon(Icons.lock), labelText: 'Password'),
              ),
              RaisedButton(
                  color: Colors.green,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'Click me',
                    style: TextStyle(color: Colors.white),
                  ))
            ])));
  }
}
