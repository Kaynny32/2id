import 'package:flutter/material.dart';

class CardTutor extends StatefulWidget {
  const CardTutor({super.key});

  @override
  State<CardTutor> createState() => _CardTutorState();
}

class _CardTutorState extends State<CardTutor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        color: Color.fromRGBO(31, 31, 31, 0.90),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
        ],
      )
    );
  }
}