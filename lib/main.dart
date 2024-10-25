import 'package:flutter/material.dart';
import 'package:hedieaty/screens/event_list_screen.dart';
import 'package:hedieaty/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: EventListScreen(),
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
