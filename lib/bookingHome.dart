import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'components/planet.dart';

class BookingHome extends StatefulWidget {
  const BookingHome({super.key});

  @override
  State<BookingHome> createState() => _BookingHomeState();
}

class _BookingHomeState extends State<BookingHome> {
  
    bool isAdmin = true; 

  final List<String> imagePaths = [
    'assets/space1.jpg',
    'assets/space2.jpg',
    'assets/space3.jpg',
  ];

  Timer? _timer;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    const Duration slideDuration = Duration(seconds: 5);
    _timer = Timer.periodic(slideDuration, (timer) {
      setState(() {
        _currentPage = (_currentPage + 1) % imagePaths.length;
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(172, 0, 0, 0),
      appBar: AppBar(
      title: Text(
                'Enigma Paradox',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
      backgroundColor: Colors.transparent,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        color: Colors.white,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ),
      
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 55),

            Container(
              margin: const EdgeInsets.only(left: 20),
              
            ),
            SizedBox(height: 20),
            Container(
              height: 200,
              child: CarouselSlider.builder(
                itemCount: imagePaths.length,
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 22 / 10,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                ),
                itemBuilder: (context, index, realIndex) {
                  return Image.asset(
                    imagePaths[index],
                    fit: BoxFit.cover,
                    width: 1000,
                  );
                },
              ),
            ),
           
            SizedBox(height: 20),
            Text(
                'Choose Your Destination',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 254, 254, 254),
                ),
              ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 6.0,
                    mainAxisSpacing: 6.0,
                  ),
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    List<String> imagePaths = [
                      'assets/1.png',
                      'assets/2.png',
                      'assets/3.png',
                      'assets/4.png',
                      'assets/5.png',
                      'assets/6.png',
                      
                    ];

                    String imagePath = imagePaths[index % imagePaths.length];

                    return GestureDetector(
                      onTap: () {
                        if (imagePath == 'assets/1.png') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Planet(),
                            ),
                          );
                        }
                        if (imagePath == 'assets/2.png') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Planet(),
                            ),
                          );
                        }
                        if (imagePath == 'assets/3.png') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Planet(),
                            ),
                          );
                        }
                        if (imagePath == 'assets/4.png') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Planet(),
                            ),
                          );
                        }

                        if (imagePath == 'assets/5.png') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Planet(),
                            ),
                          );
                        }
                        if (imagePath == 'assets/6.png') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Planet(),
                            ),
                          );
                        }
                        
                      
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 10, top: 10),
                        width: 200,
                        height: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(imagePath),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

          ],
          
        ),
      ),
    );
  }
}