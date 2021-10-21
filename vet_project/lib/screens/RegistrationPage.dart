import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageRegistration extends StatelessWidget {
  const PageRegistration({Key? key}) : super(key: key);
  static const color = const Color(0xE5E5E5);

  @override
  Widget build(BuildContext context) {
    return Container(

      color: color,
      child: ListView (
        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
        children: <Widget>[
          SizedBox(height: 10),
          Text("ВЫБЕРИТЕ ОКРУГ"),
          SizedBox(height: 10,),
          menuRegistrationPage(text : "c. Аккала", number: 13, icon:Icons.navigate_next),

          SizedBox(height:10),
          menuRegistrationPage(text: "c. Акбастау", number: 13, icon:Icons.navigate_next),
          SizedBox(height:10),
          menuRegistrationPage(text: "c. Дабыла", number: 13, icon:Icons.navigate_next),
          SizedBox(height:10),
          menuRegistrationPage(text: "c. Приозерск", number: 100, icon:Icons.navigate_next),
        ],
      )
    );
  }
}

Widget menuRegistrationPage({
  required String text,
  required int number,
  required IconData icon,
}) {
  final hoverC= Color(0xffdee2e6);
  return ListTile(
    //leading: Icon(icon, color: Colors.white),
    title: Text(text, style: TextStyle(color: Colors.black , fontSize: 18)),
    onTap: (){},
  );
}
