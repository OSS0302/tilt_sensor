import 'package:flutter/material.dart';

class SensorApp extends StatelessWidget {
  const SensorApp({super.key});

  @override
  Widget build(BuildContext context) {
    final centerX = MediaQuery.of(context).size.width / 2 - 50;
    final centerY = MediaQuery.of(context).size.height / 2 - 50;

    return Scaffold(
      appBar: AppBar(
        title: Text('수평계'),
      ),
      body: Stack(
        children: [
          Positioned(
            left: centerX,
            top: centerY,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(30),
              ),
              width: 100,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
