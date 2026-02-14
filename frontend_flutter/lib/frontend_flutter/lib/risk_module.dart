import 'package:flutter/material.dart';

class RiskModule extends StatelessWidget {
  const RiskModule({super.key});

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Positioned(
      right: 20,
      top: 20,
      child: Container(
        width: 120,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.orangeAccent.withOpacity(0.2),
          border: Border.all(color: Colors.orangeAccent, width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Center(
          child: Text(
            "Risk Panel",
            style: TextStyle(
                color: Colors.orangeAccent,
                fontWeight: FontWeight.bold,
                fontSize: 14),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
