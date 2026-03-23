import 'package:flutter/material.dart';

class HeladosPage extends StatelessWidget {
  const HeladosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'https://raw.githubusercontent.com/OmarMartinez0637/Imagenes-Para-DairyQueen/refs/heads/main/m%26ms.png',
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
              'Blizzard de M&M\'s',
              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}