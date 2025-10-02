import 'package:flutter/material.dart';
import 'package:two_id/pages/main_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/main_page',
    routes: {
      '/main_page': (context) => MainPage(),
    },
   )
  );
}