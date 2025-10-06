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
      width: 206,
      height: 48,
      child: ElevatedButton(        
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: BorderSide(color: Colors.black)
            )
          ),
          padding: MaterialStateProperty.all(EdgeInsets.zero),
        ),
        onPressed: () => widget.onPressed(), 
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.nameButton, 
                style: TextStyle(
                  fontSize: 16, 
                  color: Color.fromRGBO(22, 22, 22, 1.0)
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              CircleAvatar(
                radius: 16,
                backgroundColor: Color.fromRGBO(21, 132, 236, 100),
                child: Icon(widget.icon, size: 24, color: Colors.white),
              ),
            ],
          ),
        )
      ),
    );
  }
}