import 'package:flutter/material.dart';

class EventSortMenu extends StatelessWidget {
  const EventSortMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(itemBuilder: (context) {
      return const [
        PopupMenuItem(value: "name", child: Text("Sort by Name")),
        PopupMenuItem(value: "category", child: Text("Sort by Category")),
        PopupMenuItem(value: "status", child: Text("Sort by Status")),
        PopupMenuItem(value: "date", child: Text("Sort by Date")),
      ];
    });
  }
}
