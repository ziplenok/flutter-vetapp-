import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vet_project/main_screen.dart';
// import 'package:vet_qyzmet/screens/RegistrationPage.dart';

void main() => runApp(RegisterAnimalSide());

class RegisterAnimalSide extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vet Qyzmet',
      theme: ThemeData(
        primaryColor: Colors.white,
        textTheme: TextTheme(subtitle1: TextStyle(color: Colors.white))
      ),
      home: HomePage()
    );
  }
}


class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: Text("Регистрация животных"), leading: Icon(Icons.arrow_back_rounded)),
        body: MainScreen(),
      )
    );
  }
}
