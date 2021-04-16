import 'package:flutter/material.dart';
import 'form_user.dart';
import 'form_care.dart';

void main() {
  //runApp(MyUser());
  //runApp(UserProfile());
  runApp(MyCare());
}

class Memento extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Memento App Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Memento"),
        ),
        body: Center(
            child: Text(
                "Welcome to Memento")) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}



class MyUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coding with Curry',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: FormUser(),
    );
  }
}


class MyCare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coding with Curry',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: FormScreenCare(),
    );
  }
}

