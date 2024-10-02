import 'package:flutter/material.dart';
import 'package:s2s_travel_workshop/custom_widgets/global_card.dart';
import 'package:s2s_travel_workshop/custom_widgets/nav_bar.dart';
import 'package:s2s_travel_workshop/utils/global_colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map<String, dynamic>> destinations = [
    {
      'title': 'Belgrade',
      'image_url':
          'https://plus.unsplash.com/premium_photo-1697729779919-991cc0b2a149?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    },
    {
      'title': 'Novi Sad',
      'image_url':
          'https://plus.unsplash.com/premium_photo-1697729779919-991cc0b2a149?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    },
    {
      'title': 'Niš',
      'image_url':
          'https://plus.unsplash.com/premium_photo-1697729779919-991cc0b2a149?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    },
    {
      'title': 'Tara',
      'image_url':
          'https://plus.unsplash.com/premium_photo-1697729779919-991cc0b2a149?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    },
    {
      'title': 'Tara',
      'image_url':
          'https://plus.unsplash.com/premium_photo-1697729779919-991cc0b2a149?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    },
    {
      'title': 'Tara',
      'image_url':
          'https://plus.unsplash.com/premium_photo-1697729779919-991cc0b2a149?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    },
    {
      'title': 'Tara',
      'image_url':
          'https://plus.unsplash.com/premium_photo-1697729779919-991cc0b2a149?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    },
    {
      'title': 'Tara',
      'image_url':
          'https://plus.unsplash.com/premium_photo-1697729779919-991cc0b2a149?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    },
    {
      'title': 'Tara',
      'image_url':
          'https://plus.unsplash.com/premium_photo-1697729779919-991cc0b2a149?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.lightGrey,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Explore the world!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: GlobalColors.black,
              ),
            ),
            const SizedBox(height: 16),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: destinations.length,
              itemBuilder: (context, index) {
                final destination = destinations[index];
                return DestinationCard(
                  title: destination['title'],
                  imageUrl: destination['image_url'],
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(
        selectedIndex: 0,
      ),
    );
  }
}
