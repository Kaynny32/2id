import 'package:flutter/material.dart';
import 'package:two_id/widgets/button_border.dart';
import 'package:two_id/widgets/text_button.dart';

class CustomSideMenu extends StatefulWidget {
  const CustomSideMenu({super.key});

  @override
  State<CustomSideMenu> createState() => _CustomSideMenuState();
}

class _CustomSideMenuState extends State<CustomSideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.45,
      child: Container(
        color: Colors.white,
        child: Column(
          children: [            
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    SizedBox(height: 20),

                    TextButtonCustom(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                      nameButton: 'Услгуи',
                      colorText: Colors.black,
                      fontSize: 16,
                    ),
                    TextButtonCustom(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                      nameButton: 'Кейсы',
                      colorText: Colors.black,
                      fontSize: 16,
                    ),
                    TextButtonCustom(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                      nameButton: 'О нас',
                      colorText: Colors.black,
                      fontSize: 16,
                    ),
                    TextButtonCustom(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                      nameButton: 'Контакты',
                      colorText: Colors.black,
                      fontSize: 16,
                    ),

                    ButtonBorder(
                      onPressed: () {
                        Navigator.pushNamed(context, '/profile');
                      },
                      icon: Icons.arrow_outward_sharp,
                      nameButton: 'Обсудить проект',
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