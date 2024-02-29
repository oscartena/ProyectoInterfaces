import 'package:flutter/material.dart';
import 'package:monumentos_app/monumento.dart';
import 'package:monumentos_app/informacion_monumento_screen.dart';

class MonumentosScreen extends StatelessWidget {
  final String nombrePais;

  MonumentosScreen({required this.nombrePais});

  @override
  Widget build(BuildContext context) {
    final monumentos = monumentosPorPais[nombrePais] ?? [];

    return Scaffold(
      appBar: AppBar(
        title: Text('Monumentos de $nombrePais'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: monumentos.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20.0), // Add padding here
            child: GestureDetector(
              onTap: () {
  Navigator.push(
    context,
    PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => InformacionMonumentoScreen(monumento: monumentos[index]),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(1.0, 0.0);
        var end = Offset.zero;
        var tween = Tween(begin: begin, end: end);
        var rotatedAnimation = animation.drive(tween);

        return SlideTransition(
          position: rotatedAnimation,
          child: child,
        );
      },
    ),
  );
},
              child: MonumentoItem(
                nombre: monumentos[index].nombre,
                imagenUrl: 'images/monumentos/$nombrePais/${monumentos[index].imagenUrl}',
              ),
            ),
          );
        },
      ),
    );
  }
}

class MonumentoItem extends StatelessWidget {
  final String nombre;
  final String imagenUrl;

  const MonumentoItem({
    required this.nombre,
    required this.imagenUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 16 / 9, // Adjust this value to control the aspect ratio
          child: Image.asset(
            imagenUrl,
            fit: BoxFit.cover,
            width: double.infinity, // This makes the image take up the full width of the screen
          ),
        ),
        SizedBox(height: 5.0), // Add space between the image and the title
        Text(
  nombre,
  style: TextStyle(
    fontSize: 16, // Aumenta el tamaño del texto
  ),
),
      ],
    );
  }
}