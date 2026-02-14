import 'package:flutter/material.dart';

class ChatHubModule extends StatelessWidget {
  const ChatHubModule({super.key});

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Positioned(
      right: 20,
      bottom: 120,
      child: Container(
        width: 180,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.blueAccent.withOpacity(0.2),
          border: Border.all(color: Colors.blueAccent, width: 2),
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Center(
          child: Text(
            "Chat Hub",
            style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
