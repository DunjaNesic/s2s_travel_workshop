class Destination {
  final String title;
  final String link;
  final String description;
  final String flightPrice;
  final int extractedFlightPrice;
  final String driveDuration;
  final String thumbnail;

  Destination({
    required this.title,
    required this.link,
    required this.description,
    required this.flightPrice,
    required this.extractedFlightPrice,
    required this.driveDuration,
    required this.thumbnail,
  });

  factory Destination.fromJson(Map<String, dynamic> json) {
    return Destination(
      title: json['title'] ?? '',
      link: json['link'] ?? '',
      description: json['description'] ?? '',
      flightPrice: json['flight_price'] ?? '',
      extractedFlightPrice: json['extracted_flight_price'] ?? 0,
      driveDuration: json['drive_duration'] ?? '',
      thumbnail: json['thumbnail'] ?? '',
    );
  }

   @override
  String toString() {
    return 'Destination(title: $title, link: $link, description: $description, flightPrice: $flightPrice, driveDuration: $driveDuration)';
  }
}
