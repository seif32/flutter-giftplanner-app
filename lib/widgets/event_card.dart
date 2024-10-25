import 'package:flutter/material.dart';
import 'package:hedieaty/models/event.dart';
import 'package:hedieaty/widgets/event_action_menu.dart';
import 'package:hedieaty/widgets/event_card_detail.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key, required this.event});

  final Event event;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      elevation: 15,
      margin: const EdgeInsets.only(top: 10, bottom: 16, left: 20, right: 20),
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  event.name,
                  style: const TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      fontSize: 18),
                ),
                const Icon(Icons.event),
              ],
            ),
            const Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
          ],
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(left: 3.5),
          child: EventCardDetail(event: event),
        ),
        leading: const EventActionMenu(),
      ),
    );
  }
}
