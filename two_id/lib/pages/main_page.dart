import 'package:flutter/material.dart';
import 'package:two_id/widgets/text_button.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  SizedBox(width: 10),
                  Image(
                    image: AssetImage('assets/sprites/Logo.png'), 
                    width: 60,
                    height: 35,
                  ), 
                  Expanded(
                    flex: 3,
                    child: TextButtonCustom(
                      nameButton: 'Услуги', 
                      onPressed: (){}, 
                      colorText: Color.fromRGBO(22, 22, 22, 10), 
                      fontSize: 16,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: TextButtonCustom(
                      nameButton: 'Кейсы', 
                      onPressed: (){}, 
                      colorText: Color.fromRGBO(22, 22, 22, 10), 
                      fontSize: 16,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: TextButtonCustom(
                      nameButton: 'О нас', 
                      onPressed: (){}, 
                      colorText: Color.fromRGBO(22, 22, 22, 10), 
                      fontSize: 16,
                    ),
                  ),                   
                  Expanded(
                    flex: 4,
                    child: TextButtonCustom(
                      nameButton: 'Контакты', 
                      onPressed: (){}, 
                      colorText: Color.fromRGBO(22, 22, 22, 10), 
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 10),
                ],              
              ),
            ),

            // Скроллящаяся часть (занимает все оставшееся пространство)
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 600,
                      color: Colors.white,
                    ),
                    Container(
                      width: double.infinity,
                      height: 600,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(22, 22, 22, 1.0),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 600,
                      color: Colors.white,
                    ),
                    Container(
                      width: double.infinity,
                      height: 600,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(22, 22, 22, 1.0),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 600,
                      color: Colors.white,
                    ),
                    Container(
                      width: double.infinity,
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