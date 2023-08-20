import 'package:flutter/material.dart';

import '../booking.dart';


class Planet extends StatefulWidget {
  @override
  _PlanetState createState() => _PlanetState();
}

class _PlanetState extends State<Planet> {
  // Function to navigate to BookingPage
  void _navigateToBookingPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BookingPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Book Your Ticket'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _navigateToBookingPage,
              child: Text('Book a Flight'),
            ),
          ],
        ),
      ),
    );
  }
}
