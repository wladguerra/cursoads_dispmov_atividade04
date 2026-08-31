import 'package:flutter/material.dart';

class Tela2Screen extends StatefulWidget {
  const Tela2Screen({super.key});

  @override
  State<Tela2Screen> createState() => _Tela1ScreenState();
}

class _Tela1ScreenState extends State<Tela2Screen> {
  final _controladorLado = TextEditingController();

  String _resultado = '';

  void _calcularArea() {
    final lado = double.tryParse(_controladorLado.text);

    setState(() {
      if (lado == null) {
        _resultado = 'Digite valores válidos';
      } else if (lado <= 0) {
        _resultado =
            'Número inválido, insira um número real maior que zero.';
      } else {
        final area = (lado * lado);
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
                'Área = Lado²',
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 30),

              SizedBox(
                width: 200,
                child: TextField(
                  controller: _controladorLado,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Lado',
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