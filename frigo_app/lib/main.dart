import 'package:flutter/material.dart';
import 'widgets/camera_button.dart';
import 'pages/camera1_page.dart';
import 'pages/camera2_page.dart';
import 'pages/camera3_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Frigorífico',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF15464D)),
      ),
      home: const WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color headerColor = Color(0xFF15464D);
    const Color backgroundColor = Color(0xFFF5F5DC); // beige claro

    return Scaffold(
      backgroundColor: headerColor, // El fondo exterior
      body: Column(
        children: [
          Container(
            color: headerColor,
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 24),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text(
                      'F',
                      style: TextStyle(
                        color: headerColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                const Text(
                  'FRIGORIFICO\nLos Hermanos',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          // ACA VA EL FONDO REDONDEADO
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(48),
                  topRight: Radius.circular(48),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 60,
                  ), // ajustá la posición hacia abajo/arriba

                  const Text(
                    'Bienvenido',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ), // espacio entre el texto y la imagen
                  // Plano con botones superpuestos
                  SizedBox(
                    width: 390,
                    height: 620, // ajusta según tu imagen
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Image.asset(
                            'assets/zonas.jpg',
                            fit: BoxFit.contain,
                          ),
                        ),

                        // 📌 BOTÓN CÁMARA 1
                        Positioned(
                          top: 110, // posición vertical
                          left: 160, // posición horizontal
                          child: CameraButton(
                            title: "Zona 1",
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const Camera1Page(),
                                ),
                              );
                            },
                          ),
                        ),

                        // 📌 BOTÓN CÁMARA 2
                        Positioned(
                          top: 430,
                          left: 114,
                          child: CameraButton(
                            title: "Zona 2",
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const Camera2Page(),
                                ),
                              );
                            },
                          ),
                        ),

                        // 📌 BOTÓN CÁMARA 3
                        Positioned(
                          top: 430,
                          left: 250,
                          child: CameraButton(
                            title: "Zona 3",
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const Camera3Page(),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
