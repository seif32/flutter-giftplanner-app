import 'package:flutter/material.dart';
import 'package:hedieaty/utils/colors.dart';

class FriendListItem extends StatelessWidget {
  const FriendListItem(
      {super.key,
      required this.name,
      required this.avatar,
      required this.events});

  final String name;
  final String avatar;
  final int events;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      color: Colors.white,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(avatar),
          radius: 21,
          child: ClipOval(
            child: Image.asset(
              avatar,
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(
          name,
          style: const TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          events > 0 ? 'Upcoming events: $events' : 'No events upcoming',
          style: const TextStyle(fontFamily: "Poppins"),
        ),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {},
      ),
    );
  }
}
