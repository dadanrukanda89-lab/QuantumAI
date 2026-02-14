import 'package:flutter/material.dart';

class StorageModule extends StatelessWidget {
  const StorageModule({super.key});

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Positioned(
      left: 20,
      bottom: 20,
      child: Container(
        width: 140,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.greenAccent.withOpacity(0.2),
          border: Border.all(color: Colors.greenAccent, width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Center(
          child: Text(
            "Storage / Data",
            style: TextStyle(
                color: Colors.greenAccent,
                fontWeight: FontWeight.bold,
                fontSize: 14),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
