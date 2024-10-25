import 'package:flutter/material.dart';
import 'package:hedieaty/utils/colors.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 50, 15, 0),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Organize Your Events',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: "Poppins",
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Start creating your gift lists today!',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
                fontFamily: "Poppins",
              ),
            ),
            const SizedBox(height: 30),
            Image.asset(
              'assets/images/hero.png',
              width: 500,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/create_event');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: coral[500], // Button background color
                  ),
                  icon: Icon(
                    Icons.card_giftcard, // Icon to display
                    color: stone[100], // Icon color
                  ),
                  label: Text(
                    'Start Your List',
                    style: TextStyle(
                      fontFamily: "Poppins",
                      color: stone[100], // Text color
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
