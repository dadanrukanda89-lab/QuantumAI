import 'package:flutter/material.dart';

class RadarModule extends StatelessWidget {
  const RadarModule({super.key});

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Positioned(
      left: 20,
      top: 20,
      child: Container(
        width: 120,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.blueAccent.withOpacity(0.2),
          border: Border.all(color: Colors.blueAccent, width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Center(
          child: Text(
            "Radar",
            style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 14),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
