import 'package:flutter/material.dart';

class SensorApp extends StatelessWidget {
  const SensorApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('수평계'),
      ),
      body: Stack(
        children: [
          Positioned(
            left: 100,
            top: 100,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.cyan,
            ),
          ),
        ],
      ),
    );
  }
}
