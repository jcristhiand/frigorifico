import 'package:flutter/material.dart';

class Camera2Page extends StatelessWidget {
  const Camera2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ZONA 2 - MILAN")),
      body: const Center(
        child: Text(
          "Detalle de Cámara 2",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
