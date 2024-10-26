import 'package:flutter/material.dart';
import 'package:hedieaty/models/gift.dart';
import 'package:hedieaty/utils/colors.dart';

class GiftCard extends StatelessWidget {
  const GiftCard({
    super.key,
    required this.gift,
  });

  final Gift gift;

  Icon pledgetIcon(String status) {
    switch (status) {
      case "Pledged":
        return const Icon(Icons.lock);
      default:
        return const Icon(Icons.menu);
    }
  }

  Color pledgetColor(String status) {
    switch (status) {
      case "Pledged":
        return red[600]!;
      default:
        return green[600]!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: pledgetColor(gift.status),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      elevation: 5,
      child: ListTile(
        leading: Icon(
          Icons.wallet_giftcard,
          color: stone[100],
        ),
        title: Text(
          gift.name,
          style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w500,
            color: stone[100],
          ),
        ),
        subtitle: Text(
          gift.status,
          style: TextStyle(
            fontFamily: "Poppins",
            color: stone[100],
          ),
        ),
        trailing: pledgetIcon(gift.status),
        iconColor: stone[100],
      ),
    );
  }
}
