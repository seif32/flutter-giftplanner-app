import 'package:flutter/material.dart';

class GiftBackgroundImage extends StatelessWidget {
  const GiftBackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      height: 300,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/gifts_screen.png'),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
