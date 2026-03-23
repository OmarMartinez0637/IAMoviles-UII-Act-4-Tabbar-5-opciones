import 'package:flutter/material.dart';

class PastelesPage extends StatelessWidget {
  const PastelesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'https://raw.githubusercontent.com/OmarMartinez0637/Imagenes-Para-DairyQueen/refs/heads/main/pastel1.PNG',
            width: 200,
            height: 200,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: const Color(0xFF002244), // Azul oscuro
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              'Pastel Helado',
              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}