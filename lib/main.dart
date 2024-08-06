import 'package:flutter/material.dart';
import 'hotel_widget.dart';
import 'search.dart';

void main() {
  runApp(MainApp()); // Corrected the runApp method
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              HotelAppTitle(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.search,
                          color: Color.fromARGB(255, 7, 7, 7),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search Hotels...',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    HotelWidget(
                      hotelName: "Grand Royal Hotel",
                      price: "USD180.00",
                      location: "Kandy",
                      distance: "2km to city",
                      reviews: "170 Reviews",
                      imagePath: 'hotel_3.png',
                    ),
                    const SizedBox(height: 10),
                    HotelWidget(
                      hotelName: "Queens Hotel",
                      price: "USD200.00",
                      location: "Colombo",
                      distance: "2km to city",
                      reviews: "120 Reviews",
                      imagePath: 'hotel_5.png',
                    ),
                    const SizedBox(height: 10),
                    HotelWidget(
                      hotelName: "Hilton Hotel",
                      price: "USD280.00",
                      location: "Colombo",
                      distance: "2km to city",
                      reviews: "200 Reviews",
                      imagePath: 'hotel_4.png',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
