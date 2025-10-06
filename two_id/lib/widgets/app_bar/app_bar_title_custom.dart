import 'package:flutter/material.dart';
import 'package:two_id/widgets/text_button.dart';

class AppBarTitleCustom extends StatefulWidget {
  const AppBarTitleCustom({super.key});

  @override
  State<AppBarTitleCustom> createState() => _AppBarTitleCustomState();
}

class _AppBarTitleCustomState extends State<AppBarTitleCustom> {
  @override
  Widget build(BuildContext context) {
    return Row(
          children: [
            Image(
              image: AssetImage('assets/sprites/Logo.png'),
              width: 85,
              height: 43,
            ),
            SizedBox(width: 30),
            
            PopupMenuButton<String>(
              offset: Offset(0, 45), 
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              itemBuilder: (BuildContext context) => [
                PopupMenuItem<String>(
                  value: 'web',
                  child: Text('Контекстная реклама'),
                ),
                PopupMenuItem<String>(
                  value: 'mobile',
                  child: Text('Таргетированная реклама'),
                ),                
              ],
              onSelected: (String value) {
                
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Услуги',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(22, 22, 22, 1.0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Color.fromRGBO(22, 22, 22, 1.0),
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(width: 16),

            TextButtonCustom(
              onPressed: (){}, 
              nameButton: 'Кейсы', 
              colorText: Color.fromRGBO(22, 22, 22, 1.0), 
              fontSize: 16,
            ),
            TextButtonCustom(
              onPressed: (){}, 
              nameButton: 'О нас', 
              colorText: Color.fromRGBO(22, 22, 22, 1.0), 
              fontSize: 16,
            ),
            TextButtonCustom(
              onPressed: (){}, 
              nameButton: 'Контакты', 
              colorText: Color.fromRGBO(22, 22, 22, 1.0), 
              fontSize: 16,
            ),
          ],
        );
  }
}