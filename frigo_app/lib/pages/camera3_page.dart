import 'package:flutter/material.dart';

class Camera3Page extends StatelessWidget {
  const Camera3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ZONA 3 - CALABRESA")),
      body: const Center(
        child: Text(
          "Detalle de Cámara 3",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
