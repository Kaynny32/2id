import 'package:flutter/material.dart';
import 'package:two_id/widgets/app_bar/app_bar_actions_custom.dart';
import 'package:two_id/widgets/app_bar/app_bar_title_custom.dart';
import 'package:two_id/widgets/body/body_main.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        backgroundColor: Colors.white,

        title: AppBarTitleCustom(),

        actions: [
          AppBarActionsCustom(),
        ],
        
      ),
      
      body: BodyMain(),

      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: Icon(Icons.add),
      ),
    );
  }
}