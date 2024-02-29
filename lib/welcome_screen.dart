import 'package:flutter/material.dart';
import 'package:monumentos_app/banderas_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'images/backgroundWelcome.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 65),
              Image.asset(
                'images/logo.png',
                width: 100,
                height: 100,
              ),
              SizedBox(height: 16),
              Center(
                child: Text(
                  'Discover the world',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Align(
  alignment: Alignment.bottomCenter,
  child: Padding(
    padding: const EdgeInsets.only(bottom: 32.0),
    child: Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.7, // Hace que el botón ocupe el 70% del ancho de la pantalla
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BanderasScreen()),
          );
        },
        child: Text(
          'WELCOME!',
          style: TextStyle(
            fontStyle: FontStyle.italic,
      fontSize: 20, // Aumenta el tamaño del texto
      color: Colors.black, // Cambia el color del texto a negro
        ),
        ),
        style: ElevatedButton.styleFrom(
          primary: Color(0xFFEAC4D5), // Cambia el color de fondo a #EAC4D5
          shape: RoundedRectangleBorder( // Hace que el botón sea rectangular
            borderRadius: BorderRadius.zero,
          ),
        ),
      ),
    ),
  ),
),
        ],
      ),
    );
  }
}
