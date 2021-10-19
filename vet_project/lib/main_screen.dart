import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vet_project/app_constants.dart' ;

import 'main_listview.dart'; 

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:const Text("VetQyzmet", style: TextStyle(color: AppColors.GREY_COLOR)),
        centerTitle: true,
        leading: const Icon(Icons.menu_rounded, color: AppColors.GREY_COLOR),
        actions: const [
          IconButton(
            icon:  Icon(Icons.exit_to_app, color: AppColors.GREY_COLOR),
                padding: EdgeInsets.only(right: 10.0),
                onPressed: null),
        ],
        shape: Border(bottom: BorderSide(
          color: Colors.grey[350]!, 
          width: 2)
          ),
        ),
      body: const MainListView()
    );
  }
  
}