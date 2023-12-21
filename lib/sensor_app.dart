import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';

class SensorApp extends StatelessWidget {
  const SensorApp({super.key});

  @override
  Widget build(BuildContext context) {
    final centerX = MediaQuery.of(context).size.width / 2 - 50;
    final centerY = MediaQuery.of(context).size.height / 2 - 50;

    return Scaffold(
      appBar: AppBar(
        title: const Text('수평계'),
      ),
      body: Stack(
        children: [
          StreamBuilder<AccelerometerEvent>(
            stream: accelerometerEventStream(),
            builder: (context, snapshot) {
              if(!snapshot.hasData){
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              final event = snapshot.data!;
              List<double> accelerometerValues = [event.x,event.y,event.z];
                print(accelerometerValues);

              return Positioned(
                left: centerX,
                top: centerY,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: 100,
                  height: 100,
                ),
              );
            }
          ),
        ],
      ),
    );
  }
}
