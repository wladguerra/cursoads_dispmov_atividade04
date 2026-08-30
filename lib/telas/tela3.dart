import 'package:flutter/material.dart';

class Tela3Screen extends StatefulWidget {
  const Tela3Screen({super.key});

  @override
  State<Tela3Screen> createState() => _Tela1ScreenState();
}

class _Tela1ScreenState extends State<Tela3Screen> {
  final _controladorBase = TextEditingController();
  final _controladorAltura = TextEditingController();

  String _resultado = '';

  void _calcularArea() {
    final losangoMenor = double.tryParse(_controladorBase.text);
    final losangoMaior = double.tryParse(_controladorAltura.text);

    setState(() {
      if (losangoMenor == null || losangoMaior == null) {
        _resultado = 'Digite valores válidos';
      } else if (losangoMaior <= 0 || losangoMenor <= 0) {
        _resultado =
            'Número inválido, insira um número real maior que zero.';
      } else {
        final area = (losangoMaior * losangoMenor) / 2;
        _resultado = 'Área do losango: $area';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cálculo da área do Losango'),
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
                'Área = (Diagonal maior × Diagonal menor) ÷ 2',
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 30),

              SizedBox(
                width: 200,
                child: TextField(
                  controller: _controladorBase,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Diagonal maior',
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
                    labelText: 'Diagonal menor',
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