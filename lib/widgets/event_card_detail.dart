import 'package:flutter/material.dart';
import 'package:hedieaty/models/event.dart';
import 'package:hedieaty/utils/colors.dart';

class EventCardDetail extends StatelessWidget {
  const EventCardDetail({
    super.key,
    required this.event,
  });

  final Event event;

  Color statusColor(String status) {
    switch (status) {
      case "Upcoming":
        return green[600]!;
      case "Current":
        return blue[600]!;
      case "Past":
        return red[600]!;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Text(
          "Category: ${event.category}",
          style: const TextStyle(fontFamily: "Poppins"),
        ),
        const SizedBox(
          height: 3,
        ),
        Text(
          "Status: ${event.status}",
          style: TextStyle(
            fontFamily: "Poppins",
            color: statusColor(event.status),
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        Text(
          "Date: ${event.date.toString()}",
          style: const TextStyle(fontFamily: "Poppins"),
        )
      ],
    );
  }
}
