import 'package:flutter/material.dart';

class ChatHubModule extends StatelessWidget {
  const ChatHubModule({super.key});

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Positioned(
      right: 20,
      bottom: 20,
      child: Container(
        width: 140,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.purpleAccent.withOpacity(0.2),
          border: Border.all(color: Colors.purpleAccent, width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Center(
          child: Text(
            "Chat Hub",
            style: TextStyle(
                color: Colors.purpleAccent,
                fontWeight: FontWeight.bold,
                fontSize: 14),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
