import 'package:flutter/material.dart';
import 'package:two_id/widgets/card_tutor.dart';
import 'package:two_id/widgets/custom_button.dart';
import 'package:two_id/widgets/custom_side_menu.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: CustomSideMenu(),
      body: SafeArea(
        child: Column(
          children: [
            // Статичная верхняя панель
            SizedBox(
              width: double.infinity,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    image: AssetImage('assets/sprites/Logo.png'), 
                    width: 60,
                    height: 35,
                  ), 
                  IconButton(
                    onPressed: () {
                      _scaffoldKey.currentState!.openEndDrawer();
                    },
                    icon: Icon(Icons.menu),
                  ),
                ],              
              ),
            ),

            // Скроллящаяся часть (занимает все оставшееся пространство)
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [

                    // Пример контента
                    Container(
                      width: MediaQuery.of(context).size.width * 0.95,
                      height: 250,
                      color: Colors.white,
                      child: Column(
                        children: [

                          SizedBox(height: 50,),

                          Row(
                            children: [
                              Text('Команда, способная', 
                              style: TextStyle(
                                color: Color.fromRGBO(22, 22, 22, 1.0),
                                fontSize: 35
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 20,),

                          Row(
                            children: [
                              CustomButton(
                                width: 210,
                                height: 55,
                                onPressed: (){}, 
                                nameButton: 'увеличить', 
                                icon: Icons.arrow_outward_outlined, 
                                colorBtn: Color.fromRGBO(21, 132, 236, 1.0)
                              ),
                              SizedBox(width: 10,),
                              Text('продажи',style: TextStyle(
                                color: Color.fromRGBO(22, 22, 22, 1.0),
                                fontSize: 35
                                ),
                              )
                            ],
                          )                          
                        ],
                      ),
                    ),

                    // Чередующиеся контейнеры
                    Container(
                      width: MediaQuery.of(context).size.width * 0.95,
                      height: 600,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(22, 22, 22, 1.0),
                        borderRadius: BorderRadius.circular(16),
                      ),

                      child: Column(
                        children: [
                          CardTutor(),
                        ],
                      ),

                    ),


                    Container(
                      width: MediaQuery.of(context).size.width * 0.95,
                      height: 600,
                      color: Colors.white,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.95,
                      height: 600,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(22, 22, 22, 1.0),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.95,
                      height: 600,
                      color: Colors.white,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.95,
                      height: 600,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(22, 22, 22, 1.0),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}