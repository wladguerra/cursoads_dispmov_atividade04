import 'package:flutter/material.dart';

class Tela2Screen extends StatefulWidget {
  const Tela2Screen({super.key});

  @override
  State<Tela2Screen> createState() => _Tela1ScreenState();
}

class _Tela1ScreenState extends State<Tela2Screen> {
  final _controladorBase = TextEditingController();
  final _controladorAltura = TextEditingController();

  String _resultado = '';

  void _calcularArea() {
    final lado1 = double.tryParse(_controladorBase.text);
    final lado2 = double.tryParse(_controladorAltura.text);

    setState(() {
      if (lado1 == null || lado2 == null) {
        _resultado = 'Digite valores válidos';
      } else if (lado1 <= 0 || lado2 <= 0) {
        _resultado =
            'Número inválido, insira um número real maior que zero.';
      } else {
        final area = (lado1 * lado2);
        _resultado = 'Área do quadrado: $area';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cálculo da área do Quadrado'),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              const Text(
                'Como calcular?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'Área = 1° Lado × 2° Lado',
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 30),

              SizedBox(
                width: 200,
                child: TextField(
                  controller: _controladorBase,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: '1° lado',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              SizedBox(
                width: 200,
                child: TextField(
                  controller: _controladorAltura,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: '2° lado',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: _calcularArea,
                child: const Text('Calcular'),
              ),

              const SizedBox(height: 20),

              Text(
                _resultado,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}