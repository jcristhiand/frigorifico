import 'package:flutter/material.dart';

class ConservacionPage extends StatelessWidget {
  const ConservacionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5DC),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5F5DC),
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFF15464D)),
        title: const Text(
          "ZONA 2 - MILAN",
          style: TextStyle(
            color: Color(0xFF15464D),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            const SizedBox(height: 16),

            const Text(
              "CONSERVACIÓN",
              style: TextStyle(
                fontSize: 22,
                color: Color(0xFF15464D),
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 40),

            // Ícono temperatura
            const Icon(
              Icons.thermostat,
              size: 120,
              color: Colors.black87,
            ),

            const SizedBox(height: 10),

            const Text(
              "3 °C",
              style: TextStyle(
                fontSize: 26,
                color: Color(0xFF15464D),
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 60),

            // Ícono humedad
            const Icon(
              Icons.water_drop,
              size: 120,
              color: Colors.black87,
            ),

            const SizedBox(height: 10),

            const Text(
              "xx %",
              style: TextStyle(
                fontSize: 26,
                color: Color(0xFF15464D),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
