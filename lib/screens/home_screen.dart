import 'package:flutter/material.dart';
import 'package:hedieaty/utils/colors.dart';
import 'package:hedieaty/widgets/friend_list.dart';
import 'package:hedieaty/widgets/hero_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: stone[100],
      child: const Column(
        children: [
          HeroSection(),
          FriendList(),
        ],
      ),
    );
  }
}
