import 'package:flutter/material.dart';

class TextButtonCustom extends StatefulWidget {
  final VoidCallback onPressed;
  final String nameButton;
  final Color colorText;
  final double fontSize;

  const TextButtonCustom(
    {
      super.key, 
      required this.onPressed,
      required this.nameButton,
      required this.colorText,
      required this.fontSize,
    }
  );

  @override
  State<TextButtonCustom> createState() => _TextButtonCustomState();
}

class _TextButtonCustomState extends State<TextButtonCustom> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: ()=> widget.onPressed(), 
      child: Text(widget.nameButton, 
       style: TextStyle(
        color: widget.colorText,
        fontSize: widget.fontSize,
       ),
      )
    );
  }
}