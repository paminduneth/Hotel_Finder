import 'package:flutter/material.dart';

class HotelWidget extends StatelessWidget {
  final String hotelName;
  final String price;
  final String location;
  final String distance;
  final String reviews;
  final String imagePath;

  HotelWidget({
    required this.hotelName,
    required this.price,
    required this.location,
    required this.distance,
    required this.reviews,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    final name = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          hotelName,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontSize: 20,
          ),
        ),
        Text(
          price,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontSize: 20,
          ),
        ),
      ],
    );

    final locationWidget = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(location),
        Text(distance),
        const Text("per night"),
      ],
    );

    const stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Color.fromARGB(255, 218, 190, 35)),
        Icon(Icons.star, color: Color.fromARGB(255, 218, 190, 35)),
        Icon(Icons.star, color: Color.fromARGB(255, 218, 190, 35)),
        Icon(Icons.star_border_outlined,
            color: Color.fromARGB(255, 218, 190, 35)),
        Icon(Icons.star_border_outlined,
            color: Color.fromARGB(255, 218, 190, 35)),
      ],
    );

    final ratings = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          stars,
          Text(reviews),
        ],
      ),
    );

    final hotelImage = Image.asset(
      'images/$imagePath',
      width: 800,
      height: 200,
      fit: BoxFit.cover,
    );

    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      margin: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          hotelImage,
          name,
          const SizedBox(height: 15),
          locationWidget,
          ratings,
        ],
      ),
    );
  }
}
