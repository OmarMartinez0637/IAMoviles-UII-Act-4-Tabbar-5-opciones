import 'package:flutter/material.dart';
import 'package:myapp/mis_paginas_tab/bebidas_page.dart';
import 'package:myapp/mis_paginas_tab/conos_page.dart';
import 'package:myapp/mis_paginas_tab/helados_page.dart';
import 'package:myapp/mis_paginas_tab/para_llevar_page.dart';
import 'package:myapp/mis_paginas_tab/pasteles_page.dart';

void main() {
  runApp(const DairyQueenApp());
}

class DairyQueenApp extends StatelessWidget {
  const DairyQueenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dairy Queen',
      theme: ThemeData(
        // Fondo blanco general
        scaffoldBackgroundColor: Colors.white,
        
        // Rojo oscuro para la barra superior con letras blancas
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF8B0000), 
          foregroundColor: Colors.white, 
        ),
        
        // Azul oscuro para el TabBar inferior con iconos/letras blancas
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF002244), 
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white54,
        ),
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  // Lista de nuestras páginas
  final List<Widget> _pages = [
    const HeladosPage(),
    const BebidasPage(),
    const PastelesPage(),
    const ConosPage(),
    const ParaLlevarPage(),
  ];

  // Títulos para la AppBar dependientes de la página actual
  final List<String> _titles = [
    'Helados',
    'Bebidas',
    'Pasteles',
    'Conos',
    'Para Llevar',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _titles[_currentIndex], 
          style: const TextStyle(fontWeight: FontWeight.bold)
        ),
        centerTitle: true,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: 'Helados'),
          BottomNavigationBarItem(icon: Icon(Icons.local_drink), label: 'Bebidas'),
          BottomNavigationBarItem(icon: Icon(Icons.cake), label: 'Pasteles'),
          BottomNavigationBarItem(icon: Icon(Icons.icecream), label: 'Conos'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Para llevar'),
        ],
      ),
    );
  }
}