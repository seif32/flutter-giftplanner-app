import 'package:flutter/material.dart';
import 'package:hedieaty/utils/colors.dart';
import 'package:hedieaty/widgets/gift_background_image.dart';
import 'package:hedieaty/widgets/gift_list.dart';

class GiftScreen extends StatefulWidget {
  const GiftScreen({super.key});

  @override
  State<GiftScreen> createState() => _GiftScreenState();
}

class _GiftScreenState extends State<GiftScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: stone[100],
      appBar: AppBar(
        backgroundColor: stone[100],
        title: const Text(
          "Gifts List",
          style: TextStyle(fontFamily: "Poppins"),
        ),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GiftBackgroundImage(),
          SizedBox(
            height: 20,
          ),
          Divider(
            thickness: 1,
            indent: 20,
            endIndent: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              children: [
                Text(
                  "My Birthday",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Status: Upcoming",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            indent: 20,
            endIndent: 20,
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: GiftList(),
          ),
        ],
      ),
    );
  }
}
