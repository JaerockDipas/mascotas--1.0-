import 'package:flutter/material.dart';
import 'package:shrine/contenido/bosque-de-piedras-choqolaqa.dart';
import 'package:shrine/contenido/mirador-de-yanahura.dart';
import 'package:shrine/contenido/monasterio-de-santa-catalina.dart';
import 'package:shrine/contenido/reserva-de-salinas-y-aguada-blanca.dart';
import 'package:shrine/contenido/volcan-misti.dart';

class destino extends StatefulWidget {
  destino({Key? key}) : super(key: key);

  @override
  State<destino> createState() => _destinoState();
}

class _destinoState extends State<destino> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image.asset('assets/servicios.png'),
          Container(
            padding: EdgeInsets.all(12),
            child: Text(
              "--------- Obtén las mejores atenciones ---------",
              style: TextStyle(fontSize: 18.4, fontWeight: FontWeight.bold),
            ),
          ),
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
                    // Usamos el widget Image para mostrar una imagen
                    Image(
                      image: NetworkImage(
                          'https://media.istockphoto.com/photos/dog-spa-wellness-picture-id479955586?k=20&m=479955586&s=170667a&w=0&h=TAKZKt4ceutYvWAVJfRq0JR-ytgyHQU9ioQd5Zk95hs='),
                    ),
                    // Usamos Container para el contenedor de la descripción
                    ListTile(
                      title: Text(
                        "BAÑOS Y ESTÉTICA",
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text(
                          "Bañaditxs y más preciosxs"),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => volcanMisti()));
                        },
                        child: Text('Ver')),
                  ],
                ),
              )),
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
                    // Usamos el widget Image para mostrar una imagen
                    Image(
                      image: NetworkImage(
                          'https://www.webconsultas.com/sites/default/files/styles/wch_image_schema/public/articulos/nutricion_perros_2.jpg'),
                    ),
                    // Usamos Container para el contenedor de la descripción
                    ListTile(
                      title: Text(
                        "NUTRICIÓN",
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text(
                          "El balance siempre es buena compañía"),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => santacatalina()));
                        },
                        child: Text('Ver')),
                  ],
                ),
              )),
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
                    // Usamos el widget Image para mostrar una imagen
                    Image(
                      image: NetworkImage(
                          'https://d9eb370ff8.clvaw-cdnwnd.com/35c9cdba99bf5adcffded806045395df/200000700-b3be2b3be5/chequeo-perro-barri-llati%20%281%29.png?ph=d9eb370ff8'),
                    ),
                    // Usamos Container para el contenedor de la descripción
                    ListTile(
                      title: Text(
                        "CHEQUEOS GENERALES",
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text(
                          "Sus revisiones no pueden esperar :p"),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => salinasAguada()));
                        },
                        child: Text('Ver')),
                  ],
                ),
              )),
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
                    // Usamos el widget Image para mostrar una imagen
                    Image(
                      image: NetworkImage(
                          'https://www.zooplus.es/magazine/wp-content/uploads/2019/02/vacunas-para-perros-768x512.jpg'),
                    ),
                    // Usamos Container para el contenedor de la descripción
                    ListTile(
                      title: Text(
                        "VACUNACIÓN",
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text(
                          "Más protección, más amor "),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => miradorYanahura()));
                        },
                        child: Text('Ver')),
                  ],
                ),
              )),
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
                    // Usamos el widget Image para mostrar una imagen
                    Image(
                      image: NetworkImage(
                          'https://www.lavanguardia.com/files/article_main_microformat/uploads/2017/04/10/5fa3c9aee7921.jpeg'),
                    ),
                    // Usamos Container para el contenedor de la descripción
                    ListTile(
                      title: Text(
                        "ESTERILIZACIÓN",
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text(
                          "Menos riesgos, más vida"),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => piedrasChoqolaqa()));
                        },
                        child: Text('Ver')),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
