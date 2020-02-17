import 'package:flutter/material.dart';
import 'event_type/event_type_Icon.dart';
import 'event_type/event_type_model.dart';
import 'constants.dart';

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
      home: MyHomePage(title: 'Disponibilidade de Serviços de TI'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.lightBlueAccent
          ),
        ),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Tipo de evento:',
              style: TextStyle(
                  fontSize: 20.0,
                  fontStyle:  FontStyle.italic

              ),
            ),
            SizedBox(
                height: 50.0
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  <Widget>[
                Row(
                //  mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    EventTypeMenuIconContent(
                      icon: kEventMenuTypeIcons[kEnumEventTypes.possibly_unavailable],
                      label: EventType.getEventType(kEnumEventTypes.possibly_unavailable).shortDescription,
                      count: 5,
                      onPressed: () { print('possibly_unavailable');},
                    ),
                    EventTypeMenuIconContent(
                      icon: kEventMenuTypeIcons[kEnumEventTypes.unavailable],
                      label: EventType.getEventType(kEnumEventTypes.unavailable).shortDescription,
                      count: 5,
                      onPressed: () {
                        setState(() {
                          print('unavailable');
                        });
                      },
                    ),
                  ]
                ),

                Row(
                   //mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  children:  <Widget>[
                    EventTypeMenuIconContent(
                      icon: kEventMenuTypeIcons[kEnumEventTypes.maintenance_schedullance],
                      label: EventType.getEventType(kEnumEventTypes.maintenance_schedullance).shortDescription,
                      count: 5,
                      onPressed: () { print('maintenance_schedullance');},
                    ),
                    EventTypeMenuIconContent(
                      icon: kEventMenuTypeIcons[kEnumEventTypes.unavailablility_schedullance],
                      label: EventType.getEventType(kEnumEventTypes.unavailablility_schedullance).shortDescription,
                      count: 5,
                      onPressed: () {
                        setState(() {
                          print('unavailablility_schedullance');
                        }
                        );
                      }
                    ),
                ]),
              ],
            ),

          ],
        ),
      ),

    );
  }
}
