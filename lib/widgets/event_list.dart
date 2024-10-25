import 'package:flutter/material.dart';
import 'package:hedieaty/data/events.dart';
import 'package:hedieaty/models/event.dart';
import 'package:hedieaty/widgets/event_card.dart';

class EventList extends StatelessWidget {
  const EventList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: events.length,
      itemBuilder: (context, index) {
        final Event event = events[index];
        return EventCard(event: event);
      },
    );
  }
}
