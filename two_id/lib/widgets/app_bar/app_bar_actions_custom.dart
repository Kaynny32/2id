import 'package:flutter/material.dart';
import 'package:two_id/widgets/button_border.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarActionsCustom extends StatefulWidget {
  const AppBarActionsCustom({super.key});

  @override
  State<AppBarActionsCustom> createState() => _AppBarActionsCustomState();
}

class _AppBarActionsCustomState extends State<AppBarActionsCustom> {
  @override
  Widget build(BuildContext context) {
    return Row(
            children: [
                  IconButton(
                onPressed: (){}, 
                icon: Icon(
                  Icons.telegram,
                  size: 35, 
                  color: Color.fromRGBO(22, 22, 22, 1.0),
                )
              ),
              IconButton(
                onPressed: (){},
                icon: FaIcon(
                  FontAwesomeIcons.whatsapp,
                  size: 35,
                  color: Color.fromRGBO(22, 22, 22, 1.0),
                )
              ),
              IconButton(
                onPressed: (){}, 
                icon: Icon(
                  FontAwesomeIcons.vk,
                  size: 35,
                  color: Color.fromRGBO(22, 22, 22, 1.0),
                )
              ),     
              ButtonBorder(
                onPressed: (){}, 
                icon: Icons.arrow_outward, 
                nameButton: 'Обсудить проект',
              ),
              SizedBox(width: 20),
            ],
          );
  }
}