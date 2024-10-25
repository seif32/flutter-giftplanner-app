import 'package:flutter/material.dart';

class EventActionMenu extends StatelessWidget {
  const EventActionMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      child: const Icon(Icons.more_vert),
      itemBuilder: (context) {
        return [
          const PopupMenuItem(
            value: "Edit",
            child: Text("Edit"),
          ),
          const PopupMenuItem(
            value: "Delete",
            child: Text("Delete"),
          ),
        ];
      },
    );
  }
}
