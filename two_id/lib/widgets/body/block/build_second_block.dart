import 'package:flutter/material.dart';
import 'package:two_id/widgets/card/what_we_can_do_card.dart';

class BuildSecondBlock extends StatefulWidget {
  final bool isMobile;
  final bool isTablet;
  final bool isDesktop;

  const BuildSecondBlock({
    super.key,
    required this.isMobile,
    required this.isTablet,
    required this.isDesktop
  });

  @override
  State<BuildSecondBlock> createState() => _BuildSecondBlockState();
}

class _BuildSecondBlockState extends State<BuildSecondBlock> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: _responsiveValue(
            MediaQuery.of(context).size.width * 0.99,
            MediaQuery.of(context).size.width * 0.95,
            MediaQuery.of(context).size.width * 0.92,
            widget.isMobile,
            widget.isTablet
          ),
          height: _responsiveValue(1077, 400, 300, widget.isMobile, widget.isTablet),
          decoration: BoxDecoration(
            color: Color.fromRGBO(22, 22, 22, 1.0),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Stack(
            children: [

              // Картинка прижатая к правому краю
              Positioned(
                right: 0,
                top: 0,
                bottom: 0,
                child: Container(
                  width: _responsiveImageWidth(),
                  child: Image(
                    image: AssetImage('assets/sprites/shape.png'),
                    fit: BoxFit.contain,
                    alignment: Alignment.centerRight, 
                  ),
                ),
              ),
              

              Positioned(
                left: _responsiveValue(75, 40, 20, widget.isMobile, widget.isTablet),
                top: _responsiveValue(150, 80, 40, widget.isMobile, widget.isTablet),
                child: Container(
                  width: _responsiveContentWidth(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      //Title
                      Text(
                        'Что мы умеем?', 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: _responsiveValue(70, 40, 24, widget.isMobile, widget.isTablet),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: _responsiveValue(30, 20, 15, widget.isMobile, widget.isTablet)),
                      
                      //PageWiev
                      WhatWeCanDoCard(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // Адаптивная ширина картинки
  double _responsiveImageWidth() {
    if (widget.isMobile) return MediaQuery.of(context).size.width * 0.9;
    if (widget.isTablet) return MediaQuery.of(context).size.width * 0.8;
    return MediaQuery.of(context).size.width * 0.95;
  }

  // Адаптивная ширина контента
  double _responsiveContentWidth() {
    if (widget.isMobile) return MediaQuery.of(context).size.width * 0.5;
    if (widget.isTablet) return MediaQuery.of(context).size.width * 0.6;
    return MediaQuery.of(context).size.width * 0.4;
  }

  double _responsiveValue(double desktop, double tablet, double mobile, bool isMobile, bool isTablet) {
    if (isMobile) return mobile;
    if (isTablet) return tablet;
    return desktop;
  }
}