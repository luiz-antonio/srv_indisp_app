import 'package:flutter/material.dart';

enum kEnumEventTypes {
  possibly_unavailable,
  unavailable,
  maintenance_schedullance,
  unavailablility_schedullance,
}

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

const  kEventTypeMenuItemIcons = {
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