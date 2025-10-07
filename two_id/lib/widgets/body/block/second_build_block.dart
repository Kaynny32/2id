import 'package:flutter/material.dart';
import 'package:two_id/widgets/card/example_card.dart';
import 'package:two_id/models/data_card_what_we_can.dart';

class SecondBuildBlock extends StatefulWidget {
  final bool isMobile;

  const SecondBuildBlock(
    {
      super.key,
      required this.isMobile
    }
  );

  @override
  State<SecondBuildBlock> createState() => _SecondBuildBlockState();
}

class _SecondBuildBlockState extends State<SecondBuildBlock> {

  List<DatacardWhatWeCan> listData = [
    DatacardWhatWeCan(
      nameButton: 'Контекстная реклама в Яндекс.Директ',
      iconButton: Image.asset(''),
      titleText: 'Привлекаем целевых клиентов через поиск и сети Яндекс.Директ',
      listText: [
        'Анализ сайта и конкурентов, разработка стратегии',
        'Подбор ключевых слов',
        'Разработка рекламных текстов и креативов',
        'Создание и оптимизация рекламных кампаний',
        'Еженедельные и ежемесячные отчеты с гипотезами роста',
      ],
      secondButtonName: 'Подробнее'
    ),
    DatacardWhatWeCan(
      nameButton: 'Таргетированная реклама в VK',
      iconButton: Image.asset(''),
      titleText: 'Привлекаем клиентов из социальной сети ВКонтакте (ВК)',
      listText: [
        'Разработка стратегии',
        'Анализ целевой аудитории',
        'Создание креативов',
        'Настройка таргетингов и запуск РК',
        'Мониторинг и оптимизация рекламных кампаний',
        'Еженедельные и ежемесячные отчеты с гипотезами роста',
      ],
      secondButtonName: 'Подробнее'
    ),
    DatacardWhatWeCan(
      nameButton: 'Таргетированная реклама в Telegram',
      iconButton: Image.asset(''),
      titleText: 'Привлекаем целевую аудиторию через мессенджер Telegram',
      listText: [
        'Разработка стратегии',
        'Подбор релевантных каналов для размещения',
        'Создание рекламных объявлений',
        'Мониторинг и оптимизация кампаний',
        'Еженедельные и ежемесячные отчеты с гипотезами роста',
      ],
      secondButtonName: 'Обсудить проект'
    ),
    DatacardWhatWeCan(
      nameButton: 'Разработка сайтов на Tilda',
      iconButton: Image.asset(''),
      titleText: 'Увеличиваем органический трафик и привлекаем потенциальных клиентов из поисковых систем',
      listText: [
        'Определение целей и задач сайта, брифинг',
        'Анализ конкурентов',
        'Разработка структуры сайта',
        'Разработка дизайн-макета сайта',
        'Верстка сайта на платформе Tilda с адаптацией под мобильные устройства',
      ],
      secondButtonName: 'Обсудить проект'
    ),
  ];

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
          height: _responsiveValue(1077, 657, widget.isMobile),
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

              if(!widget.isMobile)
                Column(
                  children: [
                    Align(alignment: AlignmentGeometry.topLeft, child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 100,horizontal: 35),
                      child: Text('Что мы умеем?', style: TextStyle(color: Colors.white, fontSize: _responsiveValue(70 , 26, widget.isMobile))),
                      )
                    ),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: Container(
                          width: 640,
                          height: 611,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(31, 31, 31, 0.9),
                            borderRadius: BorderRadius.circular(16),                 
                          ),
                          child: ExampleCard(data: listData[0],),
                        ),
                      ),
                    )
                  ],
                ),

              if(widget.isMobile)
                Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 10),
                            child: Align(alignment: AlignmentGeometry.topRight, child: Text('Что мы умеем?', style: TextStyle(color: Colors.white, fontSize: _responsiveValue(70 , 26, widget.isMobile)),)),
                          ),
                        ],
                      ),
                    ),

                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Container(
                          width: 340,
                          height: 397,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(31, 31, 31, 0.9),
                            borderRadius: BorderRadius.circular(16),                 
                          ),

                          child: Container(),
                        ),
                      ),
                    )
                  ],
                )
            ],
          ),
        ),
      ],
    );
  }

  // Адаптивная ширина картинки
  double _responsiveImageWidth() {
    if (widget.isMobile) return MediaQuery.of(context).size.width * 0.9;
    return MediaQuery.of(context).size.width * 0.95;
  }

  double _responsiveValue(double desktop, double mobile, bool isMobile) {
    if (isMobile) return mobile;
    return desktop;
    }
}