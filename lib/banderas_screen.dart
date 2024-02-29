import 'package:flutter/material.dart';
import 'package:monumentos_app/monumentos_screen.dart';

class BanderasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
    IconButton(
      icon: Icon(Icons.info), // Agrega un icono de información
      onPressed: () {
        // Aquí puedes definir lo que sucederá cuando se presione el botón
      },
    ),
    IconButton(
      icon: Icon(Icons.share), // Agrega un icono de compartir
      onPressed: () {
        // Aquí puedes definir lo que sucederá cuando se presione el botón
      },
    ),
  ],
      ),
      backgroundColor: Color(0xFFB8E0D2),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Elige un país',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color:Color(0xFFD6EADF),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.all(16),
                child: GridView.count(
      crossAxisCount: 2, // Número de columnas
      childAspectRatio: 0.8, // Ajusta este valor para cambiar la relación de aspecto de los elementos
      children: [
        BanderasButton(
          nombrePais: 'ARGENTINA',
          onPressed: () {Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MonumentosScreen(nombrePais: 'Argentina'),
      ),
    );},
          imagePath: 'images/banderas/banderaArgentina.jpg',
        ),
        BanderasButton(
          nombrePais: 'ESPAÑA',
          onPressed: () {},
          imagePath: 'images/banderas/banderaEspaña.png',
        ),
        BanderasButton(
          nombrePais: 'ITALIA',
          onPressed: () {},
          imagePath: 'images/banderas/banderaItalia.jpg',
        ),
        BanderasButton(
          nombrePais: 'JAPON',
          onPressed: () {},
          imagePath: 'images/banderas/banderaJapon.jpg',
        ),
        BanderasButton(
          nombrePais: 'PERU',
          onPressed: () {},
          imagePath: 'images/banderas/banderaPeru.jpg',
        ),
        BanderasButton(
          nombrePais: 'ALEMANIA',
          onPressed: () {},
          imagePath: 'images/banderas/banderaAlemania.jpg',
        ),],
    ),
  ),
),
          ],
        ),
      ),
    );
  }
}

class BanderasButton extends StatefulWidget {
  final String nombrePais;
  final VoidCallback onPressed;
  final String imagePath;

  const BanderasButton({
    required this.nombrePais,
    required this.onPressed,
    required this.imagePath,
  });

  @override
  _BanderasButtonState createState() => _BanderasButtonState();
}

class _BanderasButtonState extends State<BanderasButton> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _animation = Tween<double>(begin: 1.0, end: 1.2).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 180,
            height: 140,
            child: ScaleTransition(
              scale: _animation,
              child: ElevatedButton(
                onPressed: () {
                  _controller.forward().then((value) {
                    _controller.reverse();
                    widget.onPressed();
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary:Color(0xFFD6EADF),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    widget.imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 12),
          Text(widget.nombrePais,
            style: TextStyle(
              fontFamily: 'CustomFont',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
