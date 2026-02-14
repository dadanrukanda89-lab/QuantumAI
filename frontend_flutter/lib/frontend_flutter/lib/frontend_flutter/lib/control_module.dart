import 'package:flutter/material.dart';

class ControlModule extends StatelessWidget {
  const ControlModule({super.key});

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Positioned(
      left: screen.width / 2 - 70,
      bottom: 20,
      child: Container(
        width: 140,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.redAccent.withOpacity(0.2),
          border: Border.all(color: Colors.redAccent, width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Center(
          child: Text(
            "Control Panel",
            style: TextStyle(
                color: Colors.redAccent,
                fontWeight: FontWeight.bold,
                fontSize: 14),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
