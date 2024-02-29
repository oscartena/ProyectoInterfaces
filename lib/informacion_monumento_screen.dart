import 'package:flutter/material.dart';
import 'package:monumentos_app/monumento.dart';

class InformacionMonumentoScreen extends StatelessWidget {
  final Monumento monumento; // Add this line

  InformacionMonumentoScreen({required this.monumento}); // Modify this line

  @override
  Widget build(BuildContext context) {
    // Divide la información del monumento en párrafos
  List<String> parrafos = monumento.informacion.split('\n');

  // Convierte cada párrafo en un widget Text y un widget SizedBox
  List<Widget> parrafosWidgets = parrafos.map((parrafo) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          parrafo,
          style: TextStyle(fontSize: 16),
          strutStyle: StrutStyle(height: 1.5),
        ),
        SizedBox(height: 4), // Agrega un espacio después de cada párrafo
      ],
    );
  }).toList();

    return Scaffold(
    appBar: AppBar(
      title: Text('Información del Monumento'),
    ),
    backgroundColor: Color(0xFF809BCE),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView( // Agrega un SingleChildScrollView para permitir el desplazamiento si el contenido es demasiado largo
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              monumento.nombre, // Use monumento.nombre here
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            Container(
          padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 0.0), // Añade espacio a los lados
          color: Color(0xFF95B8D1), // Cambia el color del contenedor a #95B8D1
          child: Column(
            children: [
              ...parrafosWidgets, // Agrega los widgets de los párrafos
            ],
          ),
        ),
        SizedBox(height: 30),
            GridView.count(
              shrinkWrap: true, // Esto permite que el GridView se ajuste a su contenido
              crossAxisCount: 2, // Esto crea 2 botones por fila
              childAspectRatio: 3, // Esto hace que los botones sean cuadrados
              mainAxisSpacing: 25.0, // Esto agrega espacio entre las filas
              crossAxisSpacing: 25.0, // Esto agrega espacio entre las columnas
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
    primary: Color(0xFFEAC4D5), // Cambia el color del botón a #EAC4D5
    onPrimary: Colors.black, // Cambia el color del texto a negro
  ),
                  onPressed: () {
                    // TODO: Implementar navegación a la web del monumento
                  },
                  child: Text(
                    'Sitio Web',
                    style: TextStyle(
      fontSize: 18, // Cambia el tamaño de la letra a 20
    ),),
                  
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
    primary: Color(0xFFEAC4D5), // Cambia el color del botón a #EAC4D5
    onPrimary: Colors.black, // Cambia el color del texto a negro
  ),
                  onPressed: () {
                    // TODO: Implementar navegación a la ubicación del monumento
                  },
                  child: Text('Ubicación',
                  style: TextStyle(
      fontSize: 18, // Cambia el tamaño de la letra a 20
    ),),
                ),
                
              ],
            ),
            SizedBox(height: 30),
            Center(
  child: Container(
    height: MediaQuery.of(context).size.width / 2 * 0.3, // Esto hace que el botón tenga la misma altura que los otros dos botones
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
    primary: Color(0xFFEAC4D5), // Cambia el color del botón a #EAC4D5
    onPrimary: Colors.black, // Cambia el color del texto a negro
  ),
      onPressed: () {
        // TODO: Implementar navegación a los restaurantes cercanos
      },
      child: Text('Restaurantes cercanos',
      style: TextStyle(
      fontSize: 18, // Cambia el tamaño de la letra a 20
    ),),
    ),
  ),
),
SizedBox(height: 10),
          ],
        ),
      ),
    ),
  );
}
}