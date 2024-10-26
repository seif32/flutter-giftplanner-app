import 'package:flutter/material.dart';
import 'package:hedieaty/screens/event_screen.dart';
import 'package:hedieaty/screens/gift_screen.dart';
import 'package:hedieaty/screens/home_screen.dart';
import 'package:hedieaty/widgets/gift_card.dart';
import 'package:hedieaty/widgets/gift_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: GiftScreen(),
      ),
    );
  }
}


// MaterialApp(
//     initialRoute: '/',
//     routes: {
//       '/': (context) => HomePage(),
//       '/createEvent': (context) => EventListPage(),
//       '/addGift': (context) => GiftListPage(),
//       '/profile': (context) => ProfilePage(),
//       '/pledgedGifts': (context) => PledgedGiftsPage(),
//     },
//   )
