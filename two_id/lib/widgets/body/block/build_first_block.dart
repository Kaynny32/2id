import 'package:flutter/material.dart';

class BuildFirstBlock extends StatefulWidget {
  final bool isMobile;
  final bool isTablet;
  final bool isDesktop;


  const BuildFirstBlock(
    {
      super.key,
      required this.isMobile, 
      required this.isTablet,
      required this.isDesktop
    }
  );

  @override
  State<BuildFirstBlock> createState() => _BuildFirstBlockState();
}

class _BuildFirstBlockState extends State<BuildFirstBlock> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: _responsiveValue(
            MediaQuery.of(context).size.width * 0.99, // десктоп
            MediaQuery.of(context).size.width * 0.95, // планшет
            MediaQuery.of(context).size.width * 0.92, // мобильный
            widget.isMobile,
            widget.isTablet
          ),
          height: _responsiveValue(350, 250, 200, widget.isMobile, widget.isTablet),
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Первая строка текста
              SizedBox(
                width: _responsiveValue(
                  MediaQuery.of(context).size.width * 0.90,
                  MediaQuery.of(context).size.width * 0.85,
                  MediaQuery.of(context).size.width * 0.80,
                  widget.isMobile,
                  widget.isTablet
                ),
                child: Row(                          
                  children: [
                    Expanded(
                      child: Text(
                        'Команда, способная', 
                        style: TextStyle(
                          color: Color.fromRGBO(22, 22, 22, 1.0), 
                          fontSize: _responsiveValue(90, 60, 32, widget.isMobile, widget.isTablet),
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              
              SizedBox(height: _responsiveValue(20, 15, 10, widget.isMobile, widget.isTablet)),
              
              // Вторая строка с кнопкой и текстом
              SizedBox(
                width: _responsiveValue(
                  MediaQuery.of(context).size.width * 0.90,
                  MediaQuery.of(context).size.width * 0.85,
                  MediaQuery.of(context).size.width * 0.80,
                  widget.isMobile,
                  widget.isTablet
                ),
                child: Row(                          
                  children: [
                    // Кнопка
                    if (!widget.isMobile) // На мобильных убираем кнопку в ряд
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(21, 132, 236, 1.0)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(90))),
                        padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
                          horizontal: _responsiveValue(30, 20, 15, widget.isMobile, widget.isTablet),
                          vertical: _responsiveValue(20, 15, 10, widget.isMobile, widget.isTablet),
                        )),
                      ),
                      onPressed: (){},
                      child: Row(
                        children: [
                          Text(
                            'увеличить',
                            style: TextStyle(
                              fontSize: _responsiveValue(90, 60, 32, widget.isMobile, widget.isTablet),
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: _responsiveValue(10, 8, 5, widget.isMobile, widget.isTablet)),
                          Icon(
                            Icons.arrow_outward_rounded, 
                            size: _responsiveValue(90, 60, 32, widget.isMobile, widget.isTablet),
                            color: Colors.white,
                          ),
                        ],
                      )
                    ),

                    if (widget.isMobile) // На мобильных - отдельная кнопка
                    Column(
                      children: [
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(21, 132, 236, 1.0)),
                            shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(90))),
                            padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            )),
                          ),
                          onPressed: (){},
                          child: Row(
                            children: [
                              Text(
                                'увеличить',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.arrow_outward_rounded, 
                                size: 24,
                                color: Colors.white,
                              ),
                            ],
                          )
                        ),
                        SizedBox(height: 10),
                        Text(
                          'продажи', 
                          style: TextStyle(
                            color: Color.fromRGBO(22, 22, 22, 1.0), 
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    if (!widget.isMobile) // На планшетах и десктопах - текст рядом
                    SizedBox(width: _responsiveValue(30, 20, 15, widget.isMobile, widget.isTablet)),

                    if (!widget.isMobile)
                    Expanded(
                      child: Text(
                        'продажи', 
                        style: TextStyle(
                          color: Color.fromRGBO(22, 22, 22, 1.0), 
                          fontSize: _responsiveValue(90, 60, 32, widget.isMobile, widget.isTablet),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),                 
        ),
      ],
    );
  }
  double _responsiveValue(double desktop, double tablet, double mobile, bool isMobile, bool isTablet) {
    if (isMobile) return mobile;
    if (isTablet) return tablet;
    return desktop;
  }
}