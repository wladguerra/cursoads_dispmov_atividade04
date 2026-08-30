import 'package:flutter/material.dart';

class Tela1Screen extends StatefulWidget {
  const Tela1Screen({super.key});

  @override
  State<Tela1Screen> createState() => _Tela1ScreenState();
}

class _Tela1ScreenState extends State<Tela1Screen> {
  final _controladorBase = TextEditingController();
  final _controladorAltura = TextEditingController();

  String _resultado = '';

  void _calcularArea() {
    final base = double.tryParse(_controladorBase.text);
    final altura = double.tryParse(_controladorAltura.text);

    setState(() {
      if (base == null || altura == null) {
        _resultado = 'Digite valores válidos';
      } else if (altura <= 0 || base <= 0) {
        _resultado =
            'Número inválido, insira um número real maior que zero.';
      } else {
        final area = (base * altura) / 2;
        _resultado = 'Área do triângulo: $area';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cálculo da área do Triângulo'),
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
                'Área = (Base × Altura) ÷ 2',
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 30),

              SizedBox(
                width: 200,
                child: TextField(
                  controller: _controladorBase,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Base',
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
                    labelText: 'Altura',
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