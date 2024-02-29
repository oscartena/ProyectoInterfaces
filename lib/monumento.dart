class Monumento {
  final String nombre;
  final String imagenUrl;
  final String informacion;

  Monumento({required this.nombre, required this.imagenUrl, required this.informacion});
}

final Map<String, List<Monumento>> monumentosPorPais = {
  'Argentina': [
    Monumento(
      nombre: 'Basilica Menor y Convento de San Francisco', 
      imagenUrl: 'basilica.jpg', 
      informacion: '''
      La Basílica Menor de la ciudad de Salta es un monumento construido en 1582 y que destaca a la vista por los llamativos colores oro, terracota y marfil que cubren su fachada.
      \nA pesar de que la basílica ha sufrido varias remodelaciones debido a varios incendios, aún conserva su encanto natural. Es uno de los monumentos que nos llevan a la época colonial y a la vez nos recuerda aires sevillanos, pues la obra fue dirigida por un arquitecto sevillano. 
      \nLa Basílica y todo el complejo fueron declarados Monumento Histórico Nacional.
      '''
      ),
    Monumento(
      nombre: 'Monumento a los Héroes de la Independencia', 
      imagenUrl: 'independencia.jpg', 
      informacion: '''
      Si se decide realizar un recorrido por uno de los lugares remotos del norte del país, un punto a visitar es Monumento a los Héroes de la Independencia, en la ciudad de Humahuaca (provincia de Jujuy). 
      \nEl monumento representa la luchas independentistas que libraron los criollos y los aborígenes, el escultor supo representar en el las diferentes razas autóctonas y europeas que forman la identidad de los argentinos.
      '''
    ),
    Monumento(
      nombre: 'El Obelisco', 
      imagenUrl: 'obelisco.jpg',
      informacion: '''
      El Obelisco es uno de los emblemas de la ciudad de Buenos Aires. Se encuentra localizado en la Plaza de la República (Barrio de San Nicolás), en la intersección entre las avenidas Corriente y el 9 de Julio. El imponente monumento es considerado como el centro neurálgico de la capital. 
      \nSe construyó en 1936 en conmemoración del cuarto centenario de la fundación de Buenos Aires y en la actualidad el monumento sirve como símbolo de conmemoración a favor de diferentes causas por ejemplo el 1 de Diciembre de 2005 el monumento fue cubierto por un preservativo rosa, como conmemoración del Día Mundial de la Lucha contra el SIDA. 
      \nSin duda la fotografía junto a este monumento es obligada en una visita a la ciudad.
      '''),
    Monumento(
      nombre: 'Puente de la Mujer', 
      imagenUrl: 'puertoMadero.jpg',
      informacion: '''
      El puente de la Mujer es uno de los monumentos que nos recuerdan estar en casa. El puente es obra del arquitecto español Santiago Calatrava, siguiendo el diseño característico de otros puentes de este arquitecto.
      \nEste elemento urbano se encuentra en el barrio de Puerto Madero, conocido como el barrio más moderno de la capital Argentina.
      \nEste puente giratorio representa la imagen de una pareja bailando tango, el bailarín sería la silueta recta, mientras que la bailarina es la silueta que se inclina.
      '''),
  ],
  'Japon': [
    // Añade más nombres de archivos según sea necesario
  ],
};