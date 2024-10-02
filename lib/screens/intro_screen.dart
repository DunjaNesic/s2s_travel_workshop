import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:s2s_travel_workshop/utils/global_colors.dart';
import 'package:s2s_travel_workshop/custom_widgets/global_button.dart';

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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //showing the usage of FittedBox
                FittedBox(
                fit: BoxFit.contain,
                child: 
                  Text(
                    'Get ready for',
                    style: TextStyle(
                      color: GlobalColors.white,
                      fontSize: 24,
                  ),
                 ),
                ),
                 FittedBox(
                fit: BoxFit.contain,
                child: 
                Text(
                  'New Adventures',
                    style: TextStyle(
                     color: GlobalColors.white,
                     fontSize: 32,
                     fontWeight: FontWeight.bold,
                  ),
                ),
              ),
                const SizedBox(height: 16),
                //showing how AutoSizeText is better than Text
                AutoSizeText(
                    'If you like to travel, then this is for you! Here you can explore the beauty of the world.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: GlobalColors.white,
                      fontSize: 15,                                        
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,     
                    minFontSize: 10,        
                  ),            
                const SizedBox(height: 40),
                  FittedBox(
                fit: BoxFit.contain,
                child: 
                GlobalButton(
                  text: "Let's Tour",
                  onPressed: () {
                    context.go('/home');
                  },
                  backgroundColor: GlobalColors.white,
                  textColor: GlobalColors.darkGreen,
                  width: 200,
                ),        
                  ),      
              ],
             ),
            ),
          ),
        ],
      ),
    );
  }
}
