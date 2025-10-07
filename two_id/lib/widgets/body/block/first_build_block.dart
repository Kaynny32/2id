import 'package:flutter/material.dart';

class FirstBuildBlock extends StatefulWidget {
  final bool isMobile;

  const FirstBuildBlock(
    {
      super.key,
      required this.isMobile,
    }
  );

  @override
  State<FirstBuildBlock> createState() => _FirstBuildBlockState();
}

class _FirstBuildBlockState extends State<FirstBuildBlock> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: _responsiveValue(
            MediaQuery.of(context).size.width * 0.99,
            MediaQuery.of(context).size.width * 0.99,
            widget.isMobile,
          ),
          height: _responsiveValue(
            600,350,widget.isMobile
          ),
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: _responsiveValue(
                  MediaQuery.of(context).size.width * 0.90,
                  MediaQuery.of(context).size.width * 0.80,
                  widget.isMobile,                  
                ),
                child: Row(                          
                  children: [
                    Expanded(
                      child: Text(
                        'Команда, способная', 
                        style: TextStyle(
                          color: Color.fromRGBO(22, 22, 22, 1.0), 
                          fontSize: _responsiveValue(90, 32, widget.isMobile),
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              
              SizedBox(height: _responsiveValue(20, 10, widget.isMobile)),
              
              // Вторая строка с кнопкой и текстом
              SizedBox(
                width: _responsiveValue(
                  MediaQuery.of(context).size.width * 0.90,
                  MediaQuery.of(context).size.width * 0.80,
                  widget.isMobile,
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
                          horizontal: _responsiveValue(30, 15, widget.isMobile),
                          vertical: _responsiveValue(20, 10, widget.isMobile),
                        )),
                      ),
                      onPressed: (){},
                      child: Row(
                        children: [
                          Text(
                            'увеличить',
                            style: TextStyle(
                              fontSize: _responsiveValue(90, 32, widget.isMobile),
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: _responsiveValue(10, 5, widget.isMobile)),
                          Icon(
                            Icons.arrow_outward_rounded, 
                            size: _responsiveValue(90, 32, widget.isMobile),
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

                    if (!widget.isMobile)
                    Expanded(
                      child: Text(
                        'продажи', 
                        style: TextStyle(
                          color: Color.fromRGBO(22, 22, 22, 1.0), 
                          fontSize: _responsiveValue(90, 32, widget.isMobile),
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
  double _responsiveValue(double desktop, double mobile, bool isMobile) {
    if (isMobile) return mobile;
    return desktop;
  }
}