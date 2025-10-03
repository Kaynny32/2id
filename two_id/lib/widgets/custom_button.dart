import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final double width;
  final double height;
  final VoidCallback onPressed;
  final String nameButton;
  final IconData icon;
  final Color colorBtn;

  const CustomButton(
    {
      super.key,
      required this.onPressed,
      required this.nameButton,
      required this.icon,
      required this.colorBtn,
      required this.width,
      required this.height,
    }
  );

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Row(        
        children: [
          Container(
            width: widget.width,
            height: widget.height,
            child: ElevatedButton( 
              onPressed: () => widget.onPressed(), 
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(widget.colorBtn),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  )
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.nameButton,
                  style: TextStyle(
                      fontSize: 25,                  
                      color: Colors.white
                    ),
                  ),
                  Icon(widget.icon, size: 35, color: Colors.white),
                ],
              )
            ),
          ),
        ],
      ),
    );
  }
}