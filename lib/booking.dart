import 'package:flutter/material.dart';

import 'components/payment.dart';
import 'components/seats.dart';

class BookingPage extends StatefulWidget {
  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  void _navigateToPaymentPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CreditCardPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flight : LAG-MAR'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            Text(
              "LAG to MARS",
            ),
            Text("2 Passengers | Return Trip | Premlum class"),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Intergalactic'),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).colorScheme.primary, 
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0), 
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16.0), 
                        textStyle: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      child: Text('\$500.00'),
                    ),
                  ),


                ],
              ),
            ),
            SizedBox(height: 20),

            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(
                          8.0), 
                      child: Image.asset("1.png",
                          width: 80,
                          height: 80), 
                    ),
                    SizedBox(width: 16), 

                    SizedBox(    
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("11 aug 2021 - 8.40pm"),
                          Text("Airtours Airlines"),
                          Text("LAG to Mars"),
                        ],
                      ),
                      
                    ),

                    SizedBox(    
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("Direct"),
                          Text("2h 20min")
                        ],
                      ),
                      
                    )

                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(
                          8.0), 
                      child: Image.asset("1.png",
                          width: 80,
                          height: 80), 
                    ),
                    SizedBox(width: 16), 

                    SizedBox(    
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("11 aug 2021 - 8.40pm"),
                          Text("Airtours Airlines"),
                          Text("LAG to Mars"),
                        ],
                      ),
                      
                    ),

                    SizedBox(    
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("Direct"),
                          Text("2h 20min")
                        ],
                      ),
                      
                    )

                  ],
                ),
              ),
            ),

            SizedBox(height: 16),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SeatSelectionPage()),
                );
              },
              child: Text('Show flight Details'),
            ),

            SizedBox(height: 16),
            Divider(),
            SizedBox(height: 16),

            Text("Passenger Details", style: TextStyle(fontWeight: FontWeight.bold),),

            SizedBox(height: 16),

            ElevatedButton(
              onPressed: () { },
              child: Text('Passenger 1'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: Text('Passenger 1'),
            ),
            SizedBox(height: 16),
            
            Divider(),
            SizedBox(height: 16),

            Text("Passenger Details", style: TextStyle(fontWeight: FontWeight.bold),),

            SizedBox(height: 16),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SeatSelectionPage()),
                );
              },
              child: Text('Add Baggage capacity'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SeatSelectionPage()),
                );
              },
              child: Text('choose your seats'),
            ),
            
           
           
            
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Text(
                        "\$500.78",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(width: 16), // Add spacing between the two components
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: _navigateToPaymentPage,
                      child: Text('Book Flight'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
