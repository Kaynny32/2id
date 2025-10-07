import 'package:flutter/material.dart';
import 'package:two_id/models/data_card_what_we_can.dart';

class ExampleCard extends StatefulWidget {
  final DatacardWhatWeCan data;

  const ExampleCard({
    super.key,
    required this.data,
  });

  @override
  State<ExampleCard> createState() => _ExampleCardState();
}

class _ExampleCardState extends State<ExampleCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        
        // Button
        SizedBox(
          width: 555,
          height: 81,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(21, 132, 236, 1)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                )
              ),
            ),
            onPressed: (){},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.data.nameButton, style: TextStyle(color: Colors.white, fontSize: 26)),
              ],   
            )
          ),
        ),

        SizedBox(height: 20),

        // Title
        SizedBox(
          width: 512,
          height: 70,
          child: Expanded(
            child: Text(
              widget.data.titleText,
              maxLines: 2,
              style: TextStyle(
                color: Colors.white,
                fontSize: 26
              ),
            ),            
          ),
        ),
        
        SizedBox(height: 20),

        // List items - динамическое создание Row для каждого элемента списка
        SizedBox(
          width: 523,
          height: 300,
          child: Column(
            children: [
              // Создаем Row для каждого элемента в listText
              ...widget.data.listText.map((text) => 
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_outward, size: 35, color: Colors.white),
                        SizedBox(width: 15),
                        Expanded(
                          child: Text(
                            text,
                            style: TextStyle(color: Colors.white, fontSize: 16),
                            maxLines: 3, // Разрешаем несколько строк если текст длинный
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,)
                  ],
                )
              ).toList(),

              SizedBox(height: 20),

              // Кнопка внизу
              Align(
                alignment: Alignment.bottomLeft,
                child: SizedBox(
                  width: 215,
                  height: 48,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50), 
                          side: BorderSide(
                            color: Colors.white,
                          )                       
                        )
                      )
                    ),
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(widget.data.secondButtonName, style: TextStyle(color: Colors.white, fontSize: 16)),
                        CircleAvatar(
                          radius: 16,
                          backgroundColor: Color.fromRGBO(21, 132, 236, 100),
                          child: Icon(Icons.arrow_outward_outlined, size: 24, color: Colors.white),
                        ),
                      ],
                    )
                  ),
                ),
              ),
            ],
          )
        ),
      ],
    );
  }
}