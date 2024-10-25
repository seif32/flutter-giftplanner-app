import 'package:hedieaty/models/event.dart';

List<Event> events = [
  Event(
    eventId: 1,
    name: 'Birthday Party',
    category: 'Birthday',
    status: 'Upcoming',
    date: DateTime(2024, 11, 20),
  ),
  Event(
    eventId: 2,
    name: 'Wedding Anniversary',
    category: 'Anniversary',
    status: 'Current',
    date: DateTime(2024, 10, 15),
  ),
  Event(
    eventId: 3,
    name: 'Company Retreat',
    category: 'Corporate',
    status: 'Past',
    date: DateTime(2024, 9, 5),
  ),
];
