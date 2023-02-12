import 'package:flutter/material.dart';

void main() {
  /*
    Hacer una pantalla

    TAREA (1 Proyecto para cada uno Ejemplo)
    1 Staleee
    1 StalFull

    Moodle
   */

  runApp(MyApp());
}

// Atajo st (Para Stateless)
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Queremos retornar
    // crl + . (Contener dentro de otra coasa cualquier cosa) --- Container
    return Container(
      color: Colors.white, // Poner color de fondo
      child: Column(
        children: [
          // Aqui ponemos los wigedts que queremos ingresar
          // Las imagenes se ponene en poubspec.yam
          // Descomentar Assets es que poner abajo del gato y con tabulacion
          Container(
            // darle una sombra a la imagen
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(blurRadius: 8),
              ],
            ),
            child: const Image(
              image: AssetImage('img/download.jpg'),
              width: 300,
            ),
          ),
          // Si queremos agregar Texto aqui va
          // Estamos repetiendo mucho esto
          // HACER UNA FUNCION para sustituir los parametros de const Text
          datosText(texto: 'Gato sentado', fontS: 40),
          datosText(texto: 'XD', fontS: 30),
          datosText(
              texto:
                  'edeseded ededededede edededede esesed ededede sedeed eded ede',
              fontS: 20),
          /*
          // Codigo Remplazado por la funcion de arriba
          const Text(
            'Gato Sentado',
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.black, fontSize: 40),
          ),
          const Text(
            'XD',
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
          // Si salen unas rayas amarilla con negro es porque esamos sobrepasando los limites de la pantalla
          const Text(
            'edeseded ededededede edededede esesed ededede sedeed eded ede',
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),*/
        ],
      ),
    );
  }
}

Text datosText({
  required String texto,
  TextDirection td = TextDirection.ltr,
  Color c = Colors.black,
  required double fontS,
}) {
  return Text(
    texto,
    textDirection: td,
    style: TextStyle(color: c, fontSize: fontS),
  );
}
