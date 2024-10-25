import 'package:flutter/material.dart';
import 'package:hedieaty/data/friends.dart';
import 'package:hedieaty/models/friend.dart';
import 'package:hedieaty/widgets/friend_list_item.dart';

class FriendList extends StatelessWidget {
  const FriendList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: friends.length,
        itemBuilder: (context, index) {
          Friend friend = friends[index];
          return FriendListItem(
            name: friend.name,
            avatar: friend.avatar,
            events: friend.event,
          );
        },
      ),
    );
  }
}
