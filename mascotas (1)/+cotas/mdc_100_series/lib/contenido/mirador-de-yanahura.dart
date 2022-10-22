import 'package:flutter/material.dart';

class miradorYanahura extends StatefulWidget {
  miradorYanahura({Key? key}) : super(key: key);

  @override
  State<miradorYanahura> createState() => _miradorYanahuraState();
}

class _miradorYanahuraState extends State<miradorYanahura> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 238, 150, 19),
        title: Text("VACUNACIÓN"),
      ),
      body: ListView(
        children: [
          Image.network("https://www.zooplus.es/magazine/wp-content/uploads/2019/02/vacunas-para-perros-768x512.jpg"),
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
                        "VACUNACIÓN",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    ListTile(
                      subtitle: Text(
                          "Los miradores son algunos de los mejores lugares para visitar en Arequipa. Desde ellos se puede apreciar la ciudad en toda su dimensión. El tradicional mirador de Yanahuara, con sus arcos hechos de sillar, ha sido repotenciado con un mirador de cristal que se eleva por más de 50 metros y solo funciona sábados, domingos y feriados.",
                          style: TextStyle(fontSize: 14)),
                    ),
                    ListTile(
                      title:
                          Text("¿Cuándo es su primera vacuna?", style: TextStyle(fontSize: 20)),
                      subtitle: Text(
                          "Mirador de yanahuara puedes llegar desde el centro de Arequipa caminando en 10 minutos.",
                          style: TextStyle(fontSize: 14)),
                    ),

                    Text("Agenta tu cita"),
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
                      ListTile(
                        title: Text("Agendar día",
                            style: TextStyle(fontSize: 18)),
                        subtitle: Text("Vacunas + chequeo", style: TextStyle(fontSize: 15)),
                      ),
                      Text(
                          "--------------------------------------------------------------------------------------"),
                      ListTile(
                        subtitle: Text("Precio por mascota",
                            style: TextStyle(fontSize: 15)),
                      ),
                      ListTile(
                        title: Text("S/. 150", style: TextStyle(fontSize: 28)),
                        subtitle: Text("Incluyendo impuestos, tasas y cargos",
                            style: TextStyle(fontSize: 15)),
                      ),
                      ElevatedButton(onPressed: () {}, child: Text("Solicitar"))
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
