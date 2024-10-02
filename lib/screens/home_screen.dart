import 'package:flutter/material.dart';
import 'package:s2s_travel_workshop/custom_widgets/global_card.dart';
import 'package:s2s_travel_workshop/custom_widgets/nav_bar.dart';
import 'package:s2s_travel_workshop/models/destination.dart';
import 'package:s2s_travel_workshop/services/destination_service.dart';
import 'package:s2s_travel_workshop/utils/api_handler.dart';
import 'package:s2s_travel_workshop/utils/global_colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
List<Destination> destinations = [];

Future<void> fetchDestinationsFromApi() async {
  BaseAPI baseAPI = BaseAPI();
  DestinationService destinationService = DestinationService(api: BaseAPI.api, headers: baseAPI.headers);

  try {
    List<Destination> fetchedDestinations = await destinationService.fetchDestinations();
    // print(fetchedDestinations);
    setState(() {
        destinations = fetchedDestinations; 
      });
  } catch (e) {
    // print('Error fetchDestinationsFromApi in details_screen: $e');
  }
}

 @override
  void initState() {
    super.initState();
    fetchDestinationsFromApi();  
  }

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
                  title: destination.title,
                  imageUrl: destination.thumbnail,
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
