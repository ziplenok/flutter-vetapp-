import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:vet_project/region_entities.dart';


import 'app_constants.dart';
import 'package:badges/badges.dart';


class AnimalRegistration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: AppColors.GREY_COLOR),
        elevation: 0,
        leading: const Icon(Icons.arrow_back),
        title:const Text("Регистрация животных", style: TextStyle(color: AppColors.GREY_COLOR)),
        centerTitle: true,
        shape: Border(bottom: BorderSide(
          color: Colors.grey[350]!, 
          width: 2)
          ),
        ),
        
        body:
        FutureBuilder (
          future: ReadJsonData(),
          builder: (context, AsyncSnapshot snapshot) {
            if(snapshot.data == null) {
              return Container (
                child: Center (child: Text("Loading..."),)
              );
            }else{
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, int index){
                  return ListTile(
                     leading: Text(snapshot.data[index].name, style:  const TextStyle(fontSize: 16.0 ,color: AppColors.GREY_COLOR),),
                      trailing: Wrap(
                        spacing: 12, // space between two icons
                        children: <Widget>[
                          Badge(
                          toAnimate: false,
                          shape: BadgeShape.square,
                          badgeColor: AppColors.COUNT_COLOR,
                          borderRadius: BorderRadius.circular(4),
                          badgeContent: Text(snapshot.data[index].count, style: const TextStyle(color: AppColors.GREY_COLOR)),
                        ),// icon-1
                        const Icon(Icons.navigate_next_sharp),// icon-2
                        ],
                      ),
                  );
              });
            }
          }
        )
    //      Material(
    //       child: ListView(
    //         padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
    //         children: <Widget>[
    //           Container (
    //             child: const Text('ВЫБИРИТЕ РЕГИОН', style: TextStyle(fontSize: 14.0 ,color: AppColors.SHADOW_COLOR),),
    //             padding: const EdgeInsets.fromLTRB(18, 10, 0, 0),
              
    //           ),
            
    //           buildMenuItem(
    //             region: 'с.Актау',
    //             count: 25,
    //             trailingIcon: Icons.navigate_next_sharp
    //           ),
    //            buildMenuItem(
    //             region: 'с.Актау',
    //             count: 25,
    //             trailingIcon: Icons.navigate_next_sharp
    //           ),
    //            buildMenuItem(
    //             region: 'с.Актау',
    //             count: 25,
    //             trailingIcon: Icons.navigate_next_sharp
    //           ),
    //            buildMenuItem(
    //             region: 'с.Актау',
    //             count: 25,
    //             trailingIcon: Icons.navigate_next_sharp
    //           ),
    //            buildMenuItem(
    //             region: 'с.Актау',
    //             count: 25,
    //             trailingIcon: Icons.navigate_next_sharp
    //           ),
    //         ],
    //       )
    // ),
      );
  }

  Future<List<Region>> ReadJsonData() async {
      // final jsonData = await rootBundle.rootBundle.loadString('entities/some_entities.json') ;
      // final list = json.decode(jsonData) as List<dynamic>;


      // return list.map((e) => Region.fromJson(e)).toList();

      var JsonData = json.decode('entities/some_entities.json');
      List<Region> items = [];
      
      for(var r in JsonData ) {

        Region region = Region(r["name"], r["count"]);
        items.add(region);
      }
      return items;
  }
  
}

Widget buildMenuItem({
  required String region,
  required int count,
  required IconData trailingIcon 
}) {

    return ListTile(
        leading: Text(region, style:  const TextStyle(fontSize: 16.0 ,color: AppColors.GREY_COLOR),),
         trailing: Wrap(
          spacing: 12, // space between two icons
          children: <Widget>[
            Badge(
            toAnimate: false,
            shape: BadgeShape.square,
            badgeColor: AppColors.COUNT_COLOR,
            borderRadius: BorderRadius.circular(4),
            badgeContent: const Text("25", style: TextStyle(color: AppColors.GREY_COLOR)),
          ),// icon-1
           const Icon(Icons.navigate_next_sharp),// icon-2
          ],
        ),
    );
  
}