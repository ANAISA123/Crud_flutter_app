
import 'package:app_crud_flutter/imagen_perfil.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Perfil Usuario',
      home: imagen_perfil(),
      color: Colors.teal,
    );
  }
  
}

