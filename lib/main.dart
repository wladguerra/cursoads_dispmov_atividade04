import 'package:flutter/material.dart';

import 'telas/tela1.dart';
import 'telas/tela2.dart';
import 'telas/tela3.dart';
import 'telas/tela4.dart';
import 'telas/tela5.dart';
import 'telas/tela6.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        useMaterial3: false,
      ),

      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora de Áreas'),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              const Text(
                'Escolha uma calculadora',
              ),

              const SizedBox(height: 50),

              // PRIMEIRA LINHA
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const Tela1Screen(),
                          ),
                        );
                      },
                      child: const Text('Triângulo 📐'),
                    ),
                  ),

                  const SizedBox(width: 15),

                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const Tela2Screen(),
                          ),
                        );
                      },
                      child: const Text('Quadrado 🟩'),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              // SEGUNDA LINHA
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const Tela3Screen(),
                          ),
                        );
                      },
                      child: const Text('Losango 🔶'),
                    ),
                  ),

                  const SizedBox(width: 15),

                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const Tela4Screen(),
                          ),
                        );
                      },
                      child: const Text('Retângulo 🔲'),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              // TERCEIRA LINHA
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const Tela5Screen(),
                          ),
                        );
                      },
                      child: const Text('Trapézio 🗻'),
                    ),
                  ),

                  const SizedBox(width: 15),

                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const Tela6Screen(),
                          ),
                        );
                      },
                      child: const Text('Círculo 🔴'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}