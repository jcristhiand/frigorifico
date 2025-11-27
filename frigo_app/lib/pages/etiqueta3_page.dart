import 'package:flutter/material.dart';

class EtiquetaPage extends StatelessWidget {
  const EtiquetaPage({super.key});

  @override
  Widget build(BuildContext context) {
    const Color backgroundColor = Color(0xFFF5F0E6); // Beige claro
    const Color headerColor = Color(0xFF15464D); // Verde azul oscuro

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20),

            // Título
            const Text(
              "ZONA 3 - CALABRESA",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: headerColor,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Etiqueta",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: headerColor,
              ),
            ),

            const SizedBox(height: 40),

            // 🔳 Marco donde irá la etiqueta
            Container(
              width: 450,
              height: 580,
              decoration: BoxDecoration(
                border: Border.all(width: 12, color: Colors.black),
              ),
              child: Image.asset(
                "assets/calabresa_etiqueta.jpeg",
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 50),

            // Iconos inferiores
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.download_rounded, size: 50, color: Colors.black),
                Icon(Icons.share_rounded, size: 50, color: Colors.black),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
