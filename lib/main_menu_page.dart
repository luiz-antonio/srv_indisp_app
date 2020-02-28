import 'package:flutter/material.dart';
import 'event_type/event_type_Icon.dart';
import 'event_type/event_type_model.dart';
import 'constants.dart';
import 'event/events_page.dart';

class MainMenuPage extends StatefulWidget {
  static String id = 'MainMenuPage';
  MainMenuPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MainMenuPageState createState() => _MainMenuPageState();
}

class _MainMenuPageState extends State<MainMenuPage> {

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
      body: SafeArea(
        child: Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Selecione o Tipo de Evento:',
                style: TextStyle(
                  fontSize: 20.0,
                  fontStyle:  FontStyle.italic,
                  color: Colors.blueGrey,
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
                        EventTypeMenuItemIconContent(
                          icon: EventTypeMenuItemIconContent.getIconFor(kEnumEventTypes.possibly_unavailable),
                          label: EventType.getShortDescriptioFor(kEnumEventTypes.possibly_unavailable),
                          count: 5,
                          onPressed: () {
                            print('possibly_unavailable');
                            Navigator.pushNamed(context, EventsPage.id, arguments: kEnumEventTypes.possibly_unavailable );
                            },
                        ),
                        EventTypeMenuItemIconContent(
                          icon: EventTypeMenuItemIconContent.getIconFor(kEnumEventTypes.unavailable),
                          label:  EventType.getShortDescriptioFor(kEnumEventTypes.unavailable),
                          count: 5,
                          onPressed: () {
                            setState(() {
                              print('unavailable');
                              Navigator.pushNamed(context, EventsPage.id, arguments: kEnumEventTypes.unavailable );
                            });
                          },
                        ),
                      ]
                  ),

                  Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:  <Widget>[
                        EventTypeMenuItemIconContent(
                          icon: EventTypeMenuItemIconContent.getIconFor(kEnumEventTypes.maintenance_schedullance),
                          label: EventType.getShortDescriptioFor(kEnumEventTypes.maintenance_schedullance),
                          count: 5,
                          onPressed: () {
                            print('maintenance_schedullance');
                            Navigator.pushNamed(context, EventsPage.id, arguments: kEnumEventTypes.maintenance_schedullance );
                          },
                        ),
                        EventTypeMenuItemIconContent(
                            icon: EventTypeMenuItemIconContent.getIconFor(kEnumEventTypes.unavailablility_schedullance),
                            label: EventType.getShortDescriptioFor(kEnumEventTypes.unavailablility_schedullance),
                            count: 5,
                            onPressed: () {
                              setState(() {
                                print('unavailablility_schedullance');
                                Navigator.pushNamed(context, EventsPage.id, arguments: kEnumEventTypes.unavailablility_schedullance );
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
      ),
    );
  }
}
