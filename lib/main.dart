import 'package:flutter/material.dart';

void main() {
  /* Hacer una pantalla */
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
      // PADDING GENERAL All - Todos , symetric (Aplicar a dos a la vez), only (Solo uno)
      padding: const EdgeInsets.symmetric(
          horizontal: 30), // Este es para el container
      color: Colors.white, // Poner color de fondo
      child: Column(
        children: [
          // En los hijos son los widgets que le podemos poner
          // PADDING PARA LA IMAGE (entre la imagen y la pantalla)
          const Padding(padding: EdgeInsets.only(top: 40)),
          // Aqui ponemos los wigedts que queremos ingresar
          // Las imagenes se ponene en poubspec.yam
          // Descomentar Assets es que poner abajo del gato y con tabulacion
          Container(
            // darle una sombra a la imagen
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(blurRadius: 8),
              ],
            ),
            child: const Image(
              image: AssetImage('img/download.jpg'),
              width: 200,
            ),
          ),
          // Si queremos agregar Texto aqui va
          // Estamos repetiendo mucho esto
          // HACER UNA FUNCION para sustituir los parametros de const Text
          /*const Padding(padding: EdgeInsets.only(top: 15)),
          datosText(texto: 'Gato sentado', fontS: 40),*/
          const TextoPersonal(
            "Gato sentado",
            Colors.black,
            40,
            15,
            25,
          ),
          /*const Padding(padding: EdgeInsets.only(top: 25)),*/
          const TextoPersonal(
            "XD",
            Colors.black,
            30,
            0,
            10,
          ),
          /*datosText(texto: 'XD', fontS: 30),
          const Padding(padding: EdgeInsets.only(top: 10)),*/
          const TextoPersonal(
            'edeseded ededededede edededede esesed ededede sedeed eded ede',
            Colors.black,
            20,
            0,
            25,
          ),
          /*datosText(
              texto:
                  'edeseded ededededede edededede esesed ededede sedeed eded ede',
              fontS: 20),
          const Padding(padding: EdgeInsets.only(top: 25)),*/
          // CREAR BOTON (Puede dar error si nos salimos de los limites)
          Directionality(
            textDirection: TextDirection.ltr,
            child: ElevatedButton(
              // Funcion anonima
              onPressed: () {
                print("Hola");
              },
              child: const Text("Agregar a favoritos"),
            ),
          )
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

  // Funcion optimizador de texto
  /*Text datosTexto(String contenido, Color color, double size) {
    return Text(
      contenido,
      textDirection: TextDirection.ltr,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }*/
}

// Creacion de Stateless widget para no usar el metodo
class TextoPersonal extends StatelessWidget {
  final String contenido;
  final Color color;
  final double size;
  final double paddingTop, paddingDown;

  const TextoPersonal(
      this.contenido, this.color, this.size, this.paddingTop, this.paddingDown,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(top: paddingTop)),
        Text(
          contenido,
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: color,
            fontSize: size,
          ),
        ),
        Padding(padding: EdgeInsets.only(top: paddingDown))
      ],
    );
  }
}

// Hacer:
// Comit en github
