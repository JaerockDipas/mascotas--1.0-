import 'package:flutter/material.dart';

class salinasAguada extends StatefulWidget {
  salinasAguada({Key? key}) : super(key: key);

  @override
  State<salinasAguada> createState() => _salinasAguadaState();
}

class _salinasAguadaState extends State<salinasAguada> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 238, 150, 19),
        title: Text("CHEQUEOS GENERALES"),
      ),
      body: ListView(
        children: [
          Image.network(
              "https://d9eb370ff8.clvaw-cdnwnd.com/35c9cdba99bf5adcffded806045395df/200000700-b3be2b3be5/chequeo-perro-barri-llati%20%281%29.png?ph=d9eb370ff8"),
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
                    SizedBox(
                      height: 12,
                    ),
                    Center(
                      child: Text(
                        "Chequeos generales",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    ListTile(
                      subtitle: Text(
                          "Joya de patrimonio natural situada en las cercanías de Arequipa, a una altitud promedio de 4 300 msnm, una zona característica por sus paisajes que mezclan volcanes nevados, lagunas rodeadas de bofedales, bosques andinos y praderas.",
                          style: TextStyle(fontSize: 14)),
                    ),
                    ListTile(
                      subtitle: Text(
                          "Su sitio más famoso corresponde a la Laguna Salinas, un escenario de particular belleza configurado a partir de un salar de aguas someras y extensos bofedales que lo circundan, un verdadero santuario de avifauna que logra acoger en ciertas épocas del año cerca de 20 000 aves acuáticas, encontrándose entre ellas sus famosos flamencos que tiñen de colorido las aguas de la laguna.",
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
                      ListTile(
                        title: Text("Revisión mensual",
                            style: TextStyle(fontSize: 18)),
                        subtitle: Text("Consulta + antipulgas",
                            style: TextStyle(fontSize: 15)),
                      ),
                      Text(
                          "--------------------------------------------------------------------------------------"),
                      ListTile(
                        subtitle: Text("Precio por mascota",
                            style: TextStyle(fontSize: 15)),
                      ),
                      ListTile(
                        title: Text("S/. 300", style: TextStyle(fontSize: 28)),
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
