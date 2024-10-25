class Event {
  final int eventId;
  final String name;
  final String status;
  final String category;
  final DateTime date;

  const Event(
      {required this.name,
      required this.status,
      required this.category,
      required this.date,
      required this.eventId});
}
