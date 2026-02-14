import 'package:flutter/material.dart';

class AICoreModule extends StatelessWidget {
  const AICoreModule({super.key});

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Positioned(
      left: screen.width / 2 - 60,
      top: screen.height / 2 - 60,
      child: Container(
        width: 120,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.cyanAccent.withOpacity(0.2),
          border: Border.all(color: Colors.cyanAccent, width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Center(
          child: Text(
            "AI Core",
            style: TextStyle(
                color: Colors.cyanAccent,
                fontWeight: FontWeight.bold,
                fontSize: 14),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
