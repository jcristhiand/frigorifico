import 'package:flutter/material.dart';
import '../pdf_view_page.dart';
import 'package:intl/intl.dart';

class Camera1Page extends StatelessWidget {
  const Camera1Page({super.key});

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color(0xFF15464D);
    const Color bgColor = Color(0xFFF5F5DC); // beige claro
    const Color greenBox = Color(0xFFB9D9CA);
    const Color lightBlue = Color(0xFFD1E1E8);

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "ZONA 1 - PEPERONI",
          style: TextStyle(
            color: Color(0xFF15464D),
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(color: primaryColor),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/peperoni.png', width: 390, fit: BoxFit.contain),

            const SizedBox(height: 20),

            // 🟩 Caja verde "Monografía"
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: greenBox,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Monografía del Producto",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 14),
                  Row(
                    children: [
                      Text(
                        "Nº R.S.P.A.: ",
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "030435",
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Nombre del Producto: ",
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Salame Pepperoni",
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  TextButton(
                    onPressed: () async {
                      // Aquí abrimos el PDF
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PdfViewPage()),
                      );
                    },
                    child: Text("Ver información del peperoni"),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // 🔹 Cantidad
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              decoration: BoxDecoration(
                color: lightBlue,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "Cantidad",
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    "130",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // 🕒 Última sincronización
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Última sincronización",
                  style: TextStyle(color: Colors.black87, fontSize: 14),
                ),
                Text(
                  DateFormat('HH:mm').format(DateTime.now()) + " hs",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                    fontSize: 14,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // 🟩 Botones inferiores
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _BottomButton(text: "Etiqueta"),
                _BottomButton(text: "Conservación"),
              ],
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

class _BottomButton extends StatelessWidget {
  final String text;

  const _BottomButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        color: Color(0xFFD1E1E8),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFF15464D),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
