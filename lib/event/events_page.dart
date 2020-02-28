import 'package:flutter/material.dart';
import 'package:srv_indisp_app/constants.dart';
import 'package:srv_indisp_app/event_type/event_type_model.dart';

kEnumEventTypes enumEventType;

class EventsPage extends StatefulWidget {

  static String id = 'EventsPage';

 EventsPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {

  @override
  Widget build(BuildContext context) {
    enumEventType = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          //widget.title,
          'Tipo: ${EventType.getShortDescriptioFor( enumEventType)}',
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
              'Eventos:',
              style: TextStyle(
                fontSize: 20.0,
                fontStyle:  FontStyle.italic,
                color: Colors.blueGrey,
              ),
            ),
            SizedBox(
                height: 50.0
            ),
          ],
        ),
      ),
    );
  }
}
