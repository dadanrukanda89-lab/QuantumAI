import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ChatHubModule extends StatefulWidget {
  const ChatHubModule({super.key});

  @override
  State<ChatHubModule> createState() => _ChatHubModuleState();
}

class _ChatHubModuleState extends State<ChatHubModule> {
  final TextEditingController _controller = TextEditingController();
  String _response = "Belum ada pesan";
  bool _isLoading = false;

  // GANTI LINK INI dengan URL dari Dashboard Koyeb kamu!
  final String apiURL = "https://nama-app-kamu.koyeb.app/chat";

  Future<void> sendChat() async {
    setState(() { _isLoading = true; });
    try {
      final response = await http.post(
        Uri.parse(apiURL),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"message": _controller.text}),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        setState(() { _response = data['reply'] ?? "Gak ada balasan"; });
      } else {
        setState(() { _response = "Error: ${response.statusCode}"; });
      }
    } catch (e) {
      setState(() { _response = "Gagal konek ke server"; });
    }
    setState(() { _isLoading = false; });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      app_bar: AppBar(title: const Text("Quantum AI Chat")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(child: Center(child: Text(_response))),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(hintText: "Tulis pesan..."),
            ),
            const SizedBox(height: 10),
            _isLoading 
              ? const CircularProgressIndicator() 
              : ElevatedButton(onPressed: sendChat, child: const Text("Kirim")),
          ],
        ),
      ),
    );
  }
}
