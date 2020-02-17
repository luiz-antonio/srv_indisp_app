import 'package:flutter/material.dart';
import 'package:srv_indisp_app/constants.dart';


const  kEventMenuTypeIcons = {
  kEnumEventTypes.possibly_unavailable:  Icon(
    Icons.announcement,
    color: Colors.amber,
    size: 80.0,
  ),
  kEnumEventTypes.unavailable: Icon(
    Icons.error,
    color: Colors.red,
    size: 80.0,
  ),
  kEnumEventTypes.maintenance_schedullance: Icon(
    Icons.event_available,
    color: Colors.lightGreen,
    size: 80.0,
  ),
  kEnumEventTypes.unavailablility_schedullance: Icon(
    Icons.event,
    color: Colors.deepOrangeAccent,
    size: 80.0,
  ),

};

const kMenuLabelTextStyle = TextStyle(
  fontSize: 15.0,
  fontWeight: FontWeight.bold ,
  color: Colors.blueAccent,
);

const kMenuCountTextStyle = TextStyle(
  fontSize: 18.0,
  color: Colors.greenAccent,
  fontWeight: FontWeight.bold,
);

class EventTypeMenuIconContent extends StatefulWidget{
  Icon icon;
  String label;
  int count;
  Function onPressed;

  EventTypeMenuIconContent ({
    this.icon,
    this.label,
    this.count = 0,
    this.onPressed,
  });

  @override
  _EventTypeMenuIconContentState createState() => _EventTypeMenuIconContentState();
}

class _EventTypeMenuIconContentState extends State<EventTypeMenuIconContent> {
  @override
  Widget build(BuildContext context){
    return Expanded(
      child: Column (
        //mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
              height: 20.0
          ),
          IconButton(
            icon: widget.icon,
            tooltip: widget.label ,
            onPressed: widget.onPressed,
            alignment: Alignment.bottomCenter,
            splashColor: Colors.white,
            autofocus: true,
           ),
          SizedBox(
              height: 50.0
          ),
          Text(widget.label,
              style: kMenuLabelTextStyle),
          SizedBox(
              height: 7.0
          ),
          Text('${widget.count}', style: kMenuCountTextStyle),
          SizedBox(
              height: 50.0
          ),
        ],
      ),
    );
  }
}

