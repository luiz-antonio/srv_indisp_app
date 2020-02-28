import 'package:flutter/cupertino.dart';
import 'package:srv_indisp_app/constants.dart';

class EventType {

  static Map<kEnumEventTypes,EventType> eventTypeMap =  {
    kEnumEventTypes.possibly_unavailable: EventType(
      shortDescription: 'possivelmente indisponível',
      description: 'Possivelmente indisponível no momento.',
    ),
    kEnumEventTypes.unavailable:  EventType(
      shortDescription: 'indisponível no momento',
      description: 'Indisponibilidade confirmada no momento.',
    ),
    kEnumEventTypes.maintenance_schedullance: EventType(
      shortDescription: 'manutenção agendada',
      description: 'Uma manutenção sem previsão de indisponibilidade está agendada.',
    ),
    kEnumEventTypes.unavailablility_schedullance: EventType(
      shortDescription: 'indisponibilidade agendada',
      description: 'Uma manutenção com previsão de indisponibilidade está agendada.',
    ),
  };

  final String shortDescription;
  final String description;

  EventType({@required this.shortDescription, @required  this.description});

  static EventType getEventType(kEnumEventTypes eventType) {
    return eventTypeMap[eventType];
  }
  static String getShortDescriptioFor(kEnumEventTypes eventType) {
    return EventType.getEventType(eventType).shortDescription;
  }

  List<EventType> possibleEventTypesChange() {
    if (this == getEventType(kEnumEventTypes.possibly_unavailable)) {
      return [getEventType(kEnumEventTypes.unavailable)];
    } else if (this == getEventType(kEnumEventTypes.unavailable)) {
      return [ getEventType(kEnumEventTypes.possibly_unavailable)];
    } else if (this == getEventType(kEnumEventTypes.maintenance_schedullance)) {
      return [
        getEventType(kEnumEventTypes.unavailable),
        getEventType(kEnumEventTypes.possibly_unavailable),
        getEventType(kEnumEventTypes.unavailablility_schedullance),
      ];
    } else if (this == getEventType(kEnumEventTypes.unavailablility_schedullance)) {
      return [
        getEventType(kEnumEventTypes.unavailable),
      ];
    } else {
      throw StateError('Unknown EventType');
    }
  }

}




/* Occurrence
DateTime beginSchedullance;
  DateTime endSchedullance;
  DateTime noticedBeginning;
  DateTime noticedEnding;
 */


