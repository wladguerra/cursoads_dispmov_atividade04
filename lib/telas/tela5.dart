import 'package:flutter/material.dart';

class Tela5Screen extends StatefulWidget {
  const Tela5Screen({super.key});

  @override
  State<Tela5Screen> createState() => _Tela1ScreenState();
}

class _Tela1ScreenState extends State<Tela5Screen> {
  final _controladorAltura = TextEditingController();
  final _controladorbaseMenor = TextEditingController();
  final _controladorbaseMaior = TextEditingController();

  String _resultado = '';

  void _calcularArea() {
    final altura = double.tryParse(_controladorAltura.text);
    final baseMaior = double.tryParse(_controladorbaseMaior.text);
    final baseMenor = double.tryParse(_controladorbaseMenor.text);


    setState(() {
      if (altura == null || baseMenor == null || baseMaior == null) {
        _resultado = 'Digite valores válidos';
      } else if (altura <= 0 || baseMaior <= 0 || baseMenor <= 0) {
        _resultado =
            'Número inválido, insira um número real maior que zero.';
      } else {
        final area = ((baseMaior + baseMenor) * altura) / 2;
        _resultado = 'Área do trapézio: $area';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cálculo da área do Trapézio'),
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
                'Área = ((Base maior + Base menor) x Área) ÷ 2',
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 30),

              SizedBox(
                width: 200,
                child: TextField(
                  controller: _controladorbaseMaior,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Base maior',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              const SizedBox(height: 15),
              SizedBox(
                width: 200,
                child: TextField(
                  controller: _controladorbaseMenor,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Base menor',
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