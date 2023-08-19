import 'package:flutter/material.dart';

class Planet extends StatefulWidget {
  const Planet({super.key});

  @override
  State<Planet> createState() => _PlanetState();
}

class _PlanetState extends State<Planet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Planet'),
      ),
      body: Center(
        child: Text('Planet'),
      ),
    );
  }
}