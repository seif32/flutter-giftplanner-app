import 'package:flutter/material.dart';
import 'package:hedieaty/data/friends.dart';
import 'package:hedieaty/models/friend.dart';
import 'package:hedieaty/utils/colors.dart';
import 'package:hedieaty/widgets/friend_list_item.dart';
import 'package:hedieaty/widgets/hero_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text(
        //     "Hedieaty",
        //     style: TextStyle(fontFamily: "Poppins"),
        //   ),
        //   actions: [
        //     IconButton(
        //       onPressed: () {},
        //       icon: const Icon(Icons.add_circle_outline),
        //     ),
        //   ],
        // ),
        body: Container(
          color: stone[100],
          child: Column(
            children: [
              const HeroSection(),
              Expanded(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
