import 'package:flutter/material.dart';
import 'package:two_id/widgets/body/block/first_build_block.dart';
import 'package:two_id/widgets/body/block/second_build_block.dart';


class BodyMain extends StatefulWidget {
  const BodyMain({super.key});

  @override
  State<BodyMain> createState() => _BodyMainState();
}

class _BodyMainState extends State<BodyMain> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    
    bool isMobile = screenWidth < 600;
    //bool isDesktop = screenWidth >= 1200;

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: _responsiveValue(75, 30, isMobile, )),
            
            // Первый блок
            FirstBuildBlock(isMobile: isMobile),
            
            SizedBox(height: _responsiveValue(75, 30, isMobile, )),
            
            // Второй блок
            SecondBuildBlock(isMobile: isMobile,),

            SizedBox(height: _responsiveValue(75,  30, isMobile)),
          ],
        ),
      ),
    );
  }

  // Вспомогательная функция для адаптивных значений
  double _responsiveValue(double desktop, double mobile, bool isMobile) {
    if (isMobile) return mobile;
    return desktop;
  }
}