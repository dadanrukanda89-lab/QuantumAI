import 'package:flutter/material.dart';
import 'background_structure.dart';
import 'ai_core_module.dart';
import 'chat_hub_module.dart';
import 'radar_module.dart';
import 'risk_module.dart';
import 'storage_module.dart';
import 'control_module.dart';

void main() {
  runApp(const QuantumAIApp());
}

class QuantumAIApp extends StatelessWidget {
  const QuantumAIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: const [
            QuantumBackground(), // background futuristik
            AICoreModule(),      // AI Core
            ChatHubModule(),     // Chat Hub
            RadarModule(),       // Radar
            RiskModule(),        // Risk Panel
            StorageModule(),     // Storage / Data
            ControlModule(),     // Control Panel
          ],
        ),
      ),
    );
  }
}
