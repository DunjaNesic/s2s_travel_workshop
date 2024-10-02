import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:s2s_travel_workshop/custom_widgets/global_button.dart';
import 'package:s2s_travel_workshop/utils/global_colors.dart';

class DestinationCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  const DestinationCard({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    precacheImage(NetworkImage(imageUrl), context);

    return Card(
      color: GlobalColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                imageUrl,
                width: 130,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: GlobalColors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.place, color: GlobalColors.darkGrey, size: 16),
                      const SizedBox(width: 4),
                      Text(
                        'Serbia',
                        style: TextStyle(
                          color: GlobalColors.darkGrey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  GlobalButton(
                    onPressed: () {
                      context.go('/home');
                    },
                    text: 'Details',
                    backgroundColor: GlobalColors.darkGreen,
                    textColor: GlobalColors.white,
                    fontSize: 12,
                    borderRadius: 20,
                    width: 80,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
