import 'package:flutter/material.dart';
import 'dart:math';

class AICoreModule extends StatelessWidget {
  const AICoreModule({super.key});

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    final signals = _generateSignals(5); // contoh 5 sinyal

    return Positioned(
      left: screen.width / 2 - 60,
      top: screen.height / 2 - 60,
      child: Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          color: Colors.purpleAccent.withOpacity(0.2),
          border: Border.all(color: Colors.purpleAccent, width: 2),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
          children: signals
              .map((offset) => Positioned(
                    left: offset.dx,
                    top: offset.dy,
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                          color: Colors.purpleAccent,
                          shape: BoxShape.circle),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }

  // Fungsi simulasi sinyal acak
  List<Offset> _generateSignals(int count) {
    final rand = Random();
    return List.generate(
        count,
        (index) =>
            Offset(rand.nextDouble() * 100, rand.nextDouble() * 100));
  }
}
