import 'package:flutter/material.dart';
import 'package:srv_indisp_app/constants.dart';


class EventTypeMenuItemIconContent extends StatefulWidget{
  Icon icon;
  String label;
  int count;
  Function onPressed;

  EventTypeMenuItemIconContent ({
    this.icon,
    this.label,
    this.count = 0,
    this.onPressed,
  });

  static Icon getIconFor(kEnumEventTypes eventType) {
   return  kEventTypeMenuItemIcons[eventType];
  }
  @override
  _EventTypeMenuItemIconContentState createState() => _EventTypeMenuItemIconContentState();
}

class _EventTypeMenuItemIconContentState extends State<EventTypeMenuItemIconContent> {
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

