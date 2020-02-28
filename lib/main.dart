import 'package:flutter/material.dart';
import 'package:srv_indisp_app/event/events_page.dart';
import 'main_menu_page.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Disponibilidade',
      theme: ThemeData.dark().copyWith(
      primaryColor: Color(0xFF0A0E21),
      scaffoldBackgroundColor: Color(0xFF0A0E21),
      accentColor: Colors.purple,
      textTheme: TextTheme(
        body1: TextStyle(color: Color(0xFFFFFFFF),),
      ),),
      //home: MainMenuPage(title: 'Disponibilidade de Serviços de TI (TRF2)'),
      initialRoute: MainMenuPage.id,
      routes: {
       MainMenuPage.id: (context) => MainMenuPage(title: 'Disponibilidade de Serviços de TI (TRF2)'),
       EventsPage.id: (context) => EventsPage(title: "Eventos"),
      }
    );
  }
}
