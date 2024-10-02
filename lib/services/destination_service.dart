import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:s2s_travel_workshop/models/destination.dart';

class DestinationService {
  final String api;
  final Map<String, String> headers; 

  DestinationService({required this.api, required this.headers});

  Future<List<Destination>> fetchDestinations() async {
    try {
      final response = await http.get(Uri.parse(api), headers: headers); 
      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse = jsonDecode(response.body);

        final List<dynamic> data = jsonResponse['popular_destinations']['destinations'];
        
        final List<Destination> destinations = data.map((json) => Destination.fromJson(json)).toList();
        // print('Successfully decoded JSON response');
        return destinations;
      } else {
        // print('Failed to load destinations: ${response.statusCode}');
        throw Exception('Failed to load destinations1 from fetchDestinations in destination_service');
      }
    } catch (e) {
      // print('Error: $e');
      throw Exception('Failed to load destinations1 from fetchDestinations in destination_service');
    }
  }
}