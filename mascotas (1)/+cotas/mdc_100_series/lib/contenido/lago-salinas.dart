import 'package:flutter/material.dart';

class lagoSalina extends StatefulWidget {
  lagoSalina({Key? key}) : super(key: key);

  @override
  State<lagoSalina> createState() => _lagoSalinaState();
}

class _lagoSalinaState extends State<lagoSalina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 238, 150, 19),
        title: Text("JUGUETES"),
      ),
      body: ListView(
        children: [
          Image.network(
              "https://superpet.pe/blog/wp-content/uploads/2021/07/Juguetes-para-perros-El-top-5-de-juegos-para-tu-mascota-1.jpg"),
          Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              margin: EdgeInsets.all(15),
              elevation: 10,
              child: ClipRRect(
                // Los bordes del contenido del card se cortan usando BorderRadius
                borderRadius: BorderRadius.circular(30),
                child: Column(
                  children: <Widget>[
                    // Usamos Container para el contenedor de la descripción
                    Center(
                      child: Text(
                        "JUGUETES",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    ListTile(
                      subtitle: Text(
                          "El paisaje, la flora y la fauna son maravillosos; pero acompañado por un guía calificado, que conoce la zona y explica los secretos de este lugar, hace que esta experiencia sea inolvidable.",
                          style: TextStyle(fontSize: 14)),
                    ),
                    ListTile(
                      title: Text("Juguetes con sonido",
                          style: TextStyle(fontSize: 18)),
                      subtitle: Text("Almuerzo, Transporte privado",
                          style: TextStyle(fontSize: 14)),
                    ),
                    ListTile(
                      title: Text("Peluches",
                          style: TextStyle(fontSize: 18)),
                      subtitle: Text(
                          "Hotel Yaravi, Hotel Yaravi, Alvarez Thomas 521, Arequipa 04000 Peru",
                          style: TextStyle(fontSize: 14)),
                    ),
                    ListTile(
                      title: Text("Sogas",
                          style: TextStyle(fontSize: 18)),
                      subtitle: Text(
                          "Los proveedores y los viajeros coordinan las horas de inicio en unos intervalos de tiempo determinados.",
                          style: TextStyle(fontSize: 14)),
                    ),
                    ListTile(
                      title: Text("Pelotas",
                          style: TextStyle(fontSize: 18)),
                      subtitle: Text(
                          "Recojo de hoteles ubicados en Arequipa a las 7:30 am (Como tour privado, el cliente puede decidir modificar el horario de salida luego de coordinar con la agencia de viajes).",
                          style: TextStyle(fontSize: 14)),
                    ),

                    Text("Te gusto nuestra informacion?"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InputChip(
                          avatar: Icon(Icons.emoji_emotions_outlined),
                          label: Text('Me gusto'),
                          onSelected: (bool value) {},
                        ),
                        InputChip(
                          avatar: Icon(Icons.mood_bad),
                          label: Text('No me gusto'),
                          onSelected: (bool value) {},
                        ),
                      ],
                    ),

                    Column(children: <Widget>[
                      Text(
                          "--------------------------------------------------------------------------------------"),
                      ListTile(
                        subtitle: Text("Precio por persona",
                            style: TextStyle(fontSize: 15)),
                      ),
                      ListTile(
                        title: Text("S/. 361", style: TextStyle(fontSize: 28)),
                        subtitle: Text("Incluyendo impuestos, tasas y cargos",
                            style: TextStyle(fontSize: 15)),
                      ),
                      ElevatedButton(onPressed: () {}, child: Text("Comprar"))
                    ]),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
