import 'package:flutter/material.dart';

class ButtonBorder extends StatefulWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final String nameButton;
  const ButtonBorder(
    {
      super.key,
      required this.onPressed,
      required this.icon,
      required this.nameButton,
    }
  );

  @override
  State<ButtonBorder> createState() => _ButtonBorderState();
}

class _ButtonBorderState extends State<ButtonBorder> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 40,
      child: ElevatedButton(        
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
              side: BorderSide(color: Colors.black)
            )
          )
        ),
        onPressed: ()=>widget.onPressed(), 
        child: Row(
          children: [
            Expanded(flex: 2, child: Text(widget.nameButton, style: TextStyle(fontSize: 12),)),
            Expanded(flex: 1,child:  Icon(widget.icon, size: 25,color: Color.fromRGBO(21, 132, 236, 100),)),
          ],
        )
      ),
    );
  }
}