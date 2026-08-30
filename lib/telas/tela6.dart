import 'package:flutter/material.dart';

class Tela6Screen extends StatefulWidget {
  const Tela6Screen({super.key});

  @override
  State<Tela6Screen> createState() => _Tela1ScreenState();
}

class _Tela1ScreenState extends State<Tela6Screen> {
  final _controladorRaio = TextEditingController();

  String _resultado = '';

  void _calcularArea() {
    final raio = double.tryParse(_controladorRaio.text);

    setState(() {
      if (raio == null) {
        _resultado = 'Digite valores válidos';
      } else if (raio <= 0) {
        _resultado =
            'Número inválido, insira um número real maior que zero.';
      } else {
        final area = ((raio * raio) * 3.14);
        _resultado = 'Área do círculo: $area';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cálculo da área do Círculo'),
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
                'Área = raio² x π',
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 30),

              SizedBox(
                width: 200,
                child: TextField(
                  controller: _controladorRaio,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Raio',
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