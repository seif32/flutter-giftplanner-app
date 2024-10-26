import 'package:flutter/material.dart';

class GiftSortMenu extends StatelessWidget {
  const GiftSortMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) => [
        PopupMenuItem(value: 'Name', child: Text('Sort by Name')),
        PopupMenuItem(value: 'Category', child: Text('Sort by Category')),
        PopupMenuItem(value: 'Status', child: Text('Sort by Status')),
      ],
      child: Icon(Icons.sort),
    );
  }
}
