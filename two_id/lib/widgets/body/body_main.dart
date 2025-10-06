import 'package:flutter/material.dart';
import 'package:two_id/widgets/body/block/build_first_block.dart';
import 'package:two_id/widgets/body/block/build_second_block.dart';

class BodyMain extends StatefulWidget {
  const BodyMain({super.key});

  @override
  State<BodyMain> createState() => _BodyMainState();
}

class _BodyMainState extends State<BodyMain> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    //final screenHeight = MediaQuery.of(context).size.height;
    
    // Определяем тип устройства на основе ширины экрана
    bool isMobile = screenWidth < 600;
    bool isTablet = screenWidth >= 600 && screenWidth < 1200;
    bool isDesktop = screenWidth >= 1200;

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: _responsiveValue(75, 50, 30, isMobile, isTablet)),
            
            // Первый блок
            BuildFirstBlock(isMobile: isMobile, isTablet:  isTablet, isDesktop:  isDesktop),
            
            SizedBox(height: _responsiveValue(75, 50, 30, isMobile, isTablet)),
            
            // Второй блок
            BuildSecondBlock(isMobile: isMobile, isTablet:  isTablet, isDesktop:  isDesktop),

            SizedBox(height: _responsiveValue(75, 50, 30, isMobile, isTablet)),
          ],
        ),
      ),
    );
  }

  // Вспомогательная функция для адаптивных значений
  double _responsiveValue(double desktop, double tablet, double mobile, bool isMobile, bool isTablet) {
    if (isMobile) return mobile;
    if (isTablet) return tablet;
    return desktop;
  }
}