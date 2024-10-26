import 'package:flutter/material.dart';
import 'package:hedieaty/data/gifts.dart';
import 'package:hedieaty/models/gift.dart';
import 'package:hedieaty/widgets/gift_card.dart';

class GiftList extends StatelessWidget {
  const GiftList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: gifts.length,
      itemBuilder: (context, index) {
        final Gift gift = gifts[index];
        return GiftCard(
          gift: gift,
        );
      },
    );
  }
}
