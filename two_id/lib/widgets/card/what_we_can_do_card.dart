import 'package:flutter/material.dart';

class WhatWeCanDoCard extends StatefulWidget {
  const WhatWeCanDoCard({super.key});

  @override
  State<WhatWeCanDoCard> createState() => _WhatWeCanDoCardState();
}

class _WhatWeCanDoCardState extends State<WhatWeCanDoCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 640,
      height: 611,
      decoration: BoxDecoration(  
        color: Color.fromRGBO(31, 31, 31, 0.9),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          SizedBox(height: 35),
          //Button
          SizedBox(
            width: 555,
            height: 90,
            child: Expanded(
              child: ElevatedButton(            
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(21, 132, 236, 1)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  )
                )
                ),
                onPressed: (){
              
                }, 
                child: Row(
                  children: [
                    Text('Контекстная реклама в Яндекс.Директ', style: TextStyle(color: Colors.white,fontSize: 26),),
                    //Icon
                  ],
                ),
              ),
            ),
          ),

          SizedBox(height: 30),
          
          //Title Text
          SizedBox(
            width: 512,
            //height: 62,
            child: Expanded(child: Text('Привлекаем целевых клиентов через поиск и сети Яндекс.Директ', style: TextStyle(color: Colors.white,fontSize: 26),))
          ),


        ],
      ),
    );
  }
}