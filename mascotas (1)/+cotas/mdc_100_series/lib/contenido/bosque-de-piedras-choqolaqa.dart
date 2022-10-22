import 'package:flutter/material.dart';

class piedrasChoqolaqa extends StatefulWidget {
  piedrasChoqolaqa({Key? key}) : super(key: key);

  @override
  State<piedrasChoqolaqa> createState() => _piedrasChoqolaqaState();
}

class _piedrasChoqolaqaState extends State<piedrasChoqolaqa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 238, 150, 19),
        title: Text("ESTERILIZACIÓN"),
      ),
      body: ListView(
        children: [
          Image.network("https://www.lavanguardia.com/files/article_main_microformat/uploads/2017/04/10/5fa3c9aee7921.jpeg"),
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
                        "Esterilización para las mascotas",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    ListTile(
                      subtitle: Text(
                          "Sabemos que lxs pequeñxs del hogar son muy importantes para nosotros y cuidarlos es parte de nuestro amor, por ello te ofrecemos las esterilizaciones para que tus pequenxs no tengan algún problema más adelante, demuestrales el amor que les tienes.",
                          style: TextStyle(fontSize: 14)),
                    ),
                    ListTile(
                      subtitle: Text(
                          "Esterilizar puede no sonar como la mejor decisión, pero lo es, alrededor de el 50% de perras sufren cancer uterinas y el 90% cancer de mama, esto tus perritas te lo van agradecer y estarás más tranquilx.",
                          style: TextStyle(fontSize: 14)),
                    ),
                    ListTile(
                      title:
                          Text("¿Como agendar una cita?", style: TextStyle(fontSize: 20)),
                      subtitle: Text(
                          "Te registras y registras a tu pequeñx para poder agendar tu cita con la clinica más cercana.",
                          style: TextStyle(fontSize: 14)),
                    ),

                    Text("Puedes agendar tu cita"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InputChip(
                          avatar: Icon(Icons.emoji_emotions_outlined),
                          label: Text('Registrarme'),
                          onSelected: (bool value) {},
                        ),
                        InputChip(
                          avatar: Icon(Icons.mood_bad),
                          label: Text('Más tarde'),
                          onSelected: (bool value) {},
                        ),
                      ],
                    ),

                    Column(children: <Widget>[
                      ListTile(
                        title: Text("Esterilización",
                            style: TextStyle(fontSize: 18)),
                        subtitle:
                            Text("Consulta + cirugía + medicamentos", style: TextStyle(fontSize: 15)),
                      ),
                      Text(
                          "--------------------------------------------------------------------------------------"),
                      ListTile(
                        subtitle: Text("Precio unitario",
                            style: TextStyle(fontSize: 15)),
                      ),
                      ListTile(
                        title: Text("S/. 600", style: TextStyle(fontSize: 28)),
                        subtitle: Text("Incluyendo medicamentos",
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
