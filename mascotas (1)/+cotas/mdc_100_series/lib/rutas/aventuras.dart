import 'package:flutter/material.dart';
import 'package:shrine/contenido/bosque-de-piedras-choqolaqa.dart';
import 'package:shrine/contenido/lago-salinas.dart';
import 'package:shrine/contenido/mirador-de-yanahura.dart';
import 'package:shrine/contenido/monasterio-de-santa-catalina.dart';
import 'package:shrine/contenido/rafting-rio-chili.dart';
import 'package:shrine/contenido/reserva-de-salinas-y-aguada-blanca.dart';
import 'package:shrine/contenido/salinas-biking.dart';
import 'package:shrine/contenido/tour-quad-arequipa.dart';
import 'package:shrine/contenido/trekking-cataratas.dart';
import 'package:shrine/contenido/volcan-misti.dart';

class aventura extends StatefulWidget {
  aventura({Key? key}) : super(key: key);

  @override
  State<aventura> createState() => _aventuraState();
}

class _aventuraState extends State<aventura> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image.network("https://elclubmascotas.com/sites/default/files/accesorios.jpg"),
          Container(
            padding: EdgeInsets.all(12),
            child: Text(
              "------- Disfruta de los mejores productos ------",
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
                          'https://www.purina-latam.com/sites/g/files/auxxlc391/files/2021-02/familia_de_productos_ecuador.png'),
                    ),
                    // Usamos Container para el contenedor de la descripción
                    ListTile(
                      title: Text("ALIMENTO PARA MASCOTAS", style: TextStyle(fontSize: 20),),
                      subtitle: Text("Buca tus marcas preferidas"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => trekkingCataratas()));
                      },
                      child: Text('Ver')
                    ),
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
                          'https://superpet.pe/blog/wp-content/uploads/2021/07/Juguetes-para-perros-El-top-5-de-juegos-para-tu-mascota-1.jpg'),
                    ),
                    // Usamos Container para el contenedor de la descripción
                    ListTile(
                      title: Text("JUGUETES", style: TextStyle(fontSize: 20),),
                      subtitle: Text("Que tus pequeñxs se diviertan"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => lagoSalina()));
                      },
                      child: Text('Ver')
                    ),
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
                          'https://www.fanaticosdelasmascotas.cl/wp-content/uploads/2021/03/perros_ropa1.jpg'),
                    ),
                    // Usamos Container para el contenedor de la descripción
                    ListTile(
                      title: Text("ROPITA Y ACCESORIOS ", style: TextStyle(fontSize: 20),),
                      subtitle: Text("Vestir a la moda no esta de más"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => raftingRioChili()));
                      },
                      child: Text('Ver')
                    ),
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
                          'https://ripleype.imgix.net/https%3A%2F%2Fdpq25p1ucac70.cloudfront.net%2Fseller-place-files%2Fmrkl-files%2F880%2FMASCOTAS%2FA1016_123414590605_2.jpeg?w=750&h=555&ch=Width&auto=format&cs=strip&bg=FFFFFF&q=60&trimcolor=FFFFFF&trim=color&fit=fillmax&ixlib=js-1.1.0&s=5edbc4a04ff4e04f308ed38af3d02c62'),
                    ),
                    // Usamos Container para el contenedor de la descripción
                    ListTile(
                      title: Text("MEDICAMENTOS", style: TextStyle(fontSize: 20),),
                      subtitle: Text("Mantelxs sanos con las marcas más confiables"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => salinasBiking()));
                      },
                      child: Text('Ver')
                    ),
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
                          'https://static3.elcorreo.com/www/multimedia/202201/14/media/cortadas/perreteweb-kva--984x468@RC.jpg'),
                    ),
                    // Usamos Container para el contenedor de la descripción
                    ListTile(
                      title: Text("CUIDADO E HIGIENE", style: TextStyle(fontSize: 20),),
                      subtitle: Text("Una buena limpieza y buen cuidado lx tendrán muy bien"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => tourQuad()));
                      },
                      child: Text('Ver')
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}