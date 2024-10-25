import 'package:flutter/material.dart';
import 'package:hedieaty/utils/colors.dart';
import 'package:hedieaty/widgets/event_list.dart';
import 'package:hedieaty/widgets/event_sort_menu.dart';

class EventListScreen extends StatefulWidget {
  const EventListScreen({super.key});

  @override
  State<EventListScreen> createState() {
    return _EventListScreenState();
  }
}

class _EventListScreenState extends State<EventListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: const [
            EventSortMenu(),
          ],
          backgroundColor: stone[100],
          title: const Text(
            "Event List",
            style: TextStyle(fontFamily: "Poppins"),
          ),
        ),
        body: Container(
          color: stone[100],
          child: const EventList(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: coral[400],
          child: const Icon(Icons.add),
        ));
  }
}