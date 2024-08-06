import 'package:flutter/material.dart';

class HotelAppTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              // Implement your back arrow functionality here
            },
          ),
        ),
        Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'The Hotel Finder',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              Container(
                height: 2.0,
                width: double.infinity,
                color: Colors.black,
              ),
              const SizedBox(height: 8.0),
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: const Icon(Icons.favorite,
                    color: Color.fromARGB(255, 172, 11, 172)),
                onPressed: () {
                  // Implement your favorite/heart icon functionality here
                },
              ),
              IconButton(
                icon: const Icon(Icons.location_on,
                    color: Color.fromARGB(255, 19, 71, 240)),
                onPressed: () {
                  // Implement your location icon functionality here
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
