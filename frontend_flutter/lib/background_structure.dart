import 'package:flutter/material.dart';
import 'dart:math';

class QuantumBackground extends StatelessWidget {
  const QuantumBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _QuantumGridPainter(),
      child: Container(),
    );
  }
}

class _QuantumGridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width;
    final h = size.height;

    // 🌌 Gradient gelap sebagai dasar
    final bg = Rect.fromLTWH(0, 0, w, h);
    final bgPaint = Paint()
      ..shader = const LinearGradient(
        colors: [Color(0xFF020024), Color(0xFF090979), Color(0xFF00D4FF)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(bg);
    canvas.drawRect(bg, bgPaint);

    // 🔹 Garis grid halus
    final gridPaint = Paint()
      ..color = Colors.cyanAccent.withOpacity(0.05)
      ..strokeWidth = 1;
    const gridSize = 24.0;
    for (double x = 0; x < w; x += gridSize) {
      canvas.drawLine(Offset(x, 0), Offset(x, h), gridPaint);
    }
    for (double y = 0; y < h; y += gridSize) {
      canvas.drawLine(Offset(0, y), Offset(w, y), gridPaint);
    }

    // 💫 Bintang kecil acak (efek galaksi futuristik)
    final starPaint = Paint()..color = Colors.cyanAccent.withOpacity(0.4);
    final rand = Random(1234);
    for (int i = 0; i < 150; i++) {
      final x = rand.nextDouble() * w;
      final y = rand.nextDouble() * h;
      final r = rand.nextDouble() * 1.2;
      canvas.drawCircle(Offset(x, y), r, starPaint);
    }

    // 🌀 Cahaya pusat (Quantum Core)
    final center = Offset(w / 2, h / 2);
    final corePaint = Paint()
      ..shader = RadialGradient(
        colors: [
          Colors.cyanAccent.withOpacity(0.4),
          Colors.blueAccent.withOpacity(0.0),
        ],
      ).createShader(Rect.fromCircle(center: center, radius: 200));
    canvas.drawCircle(center, 200, corePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
