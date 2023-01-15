import 'package:flutter/material.dart';

class carousel extends StatefulWidget {
  const carousel({super.key});

  @override
  State<carousel> createState() => _carouselState();
}

class _carouselState extends State<carousel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
    );
  }
}