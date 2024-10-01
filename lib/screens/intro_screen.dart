import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:s2s_travel_workshop/utils/global_colors.dart';
import 'package:s2s_travel_workshop/widgets/global_button.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: GlobalColors.black.withOpacity(0.3),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Get ready for',
                  style: TextStyle(
                    color: GlobalColors.white,
                    // nisam bas sig da je dobro ovako zakucati font, istrazi to malo
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'New Adventures',
                  style: TextStyle(
                    color: GlobalColors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'If you like to travel, then this is for you! Here you can explore the beauty of the world.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: GlobalColors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                GlobalButton(
                  text: "Let's Tour",
                  onPressed: () {
                    context.go('/home');
                  },
                  backgroundColor: GlobalColors.white,
                  textColor: GlobalColors.darkGreen,
                  width: 200,
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
