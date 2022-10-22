import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List places = [
    {
      'nombre': 'El Hurón Azul Clínica Veterinaria',
      'imagen': 'assets/huron azul.jpg',
      'precio': 'Consulta: 50',
      'descripcion':
          'Somos una Clínica Veterinaria con 9 Sedes en Lima, nos caracterizamos por brindar Atención médica 24 horas, Especialidades, Imagenología, Farmacia, Petshop, Servicio de Peluquería, Delivery. Visita nuestra web https://elhuronazul.net/',
    },
    {
      'nombre': 'Clínica Veterinaria Groomers',
      'imagen': 'assets/groomers.png',
      'precio': 'Consulta: 60',
      'descripcion':
          'Más que un seguro un plan de salud ideal para tu mascota, visitia nuestra pagina web:https://www.veterinariagroomers.pe',
    },
    {
      'nombre': 'Veterinaria Animal Center',
      'imagen': 'assets/animal.png',
      'precio': '0',
      'descripcion':
          'Dirección: Avenida josé Carlos Mariátegui 2283 Cercado de Lima 15006',
    },
    {
      'nombre': 'Clínica Veterinaria DOGTORAS',
      'imagen': 'assets/dogtoras.jpg',
      'precio': 'Consulta: 50',
      'descripcion':
          'En nuestra veterinaria, brindamos un trato personalizado a todos los clientes y, como campaña permanente, tratamos de educar al propietario para que mejore las relaciones con su mascota, le brinde los cuidados apropiados y así exista entre ambos una perfecta armonía.',
    },
    {
      'nombre': 'Clínica Veterinaria Lord Pets',
      'imagen': 'assets/lord.jpg',
      'precio': '0',
      'descripcion':
          'Dirección: Jr.La Cantuta 416 Urb.Zárate SJL - Tlf: 994212122 - Web:https://www.facebook.com/clinica.veterinaria.lord.pets ',
    },
    {
      'nombre': 'Pet Center Clínica Veterinaria',
      'imagen': 'assets/pet center.png',
      'precio': '0',
      'descripcion':
          'Realizamos los servicios de: Medicina veterinaria en todas las ramas, cirugía especializada, internamiento de mascotas, diagnóstico por imágenes, laboratorio veterinario y grooming profesional y de exposición, Pet Shop con gran variedad de productos importados, venta de alimentos balanceados y amplia farmacia veterinaria.',
    },
    {
      'nombre': 'Veterinaria LIMA',
      'imagen': 'assets/lima.jpg',
      'precio': '0',
      'descripcion':
          'Consultas en general - Inmunizaciones (Vacunas) - Desparasitación interna & externa - Tratamientos y Fluidoterapia - Internamiento - Cirugías en general - Análisis clínicos',
    }
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: size.height * 0.4,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/mascotas.png'),
                      fit: BoxFit.contain,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    )),
              ),
              Positioned(
                  bottom: -60,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.grey, width: 2),
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 20)
                        ]),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 20),
                                hintText: 'Buscar',
                                hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 255, 159, 33)),
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(Icons.search, color: Colors.grey),
                        )
                      ],
                    ),
                  ))
            ],
          ),
          SizedBox(height: 50),
          Expanded(
              child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'VETERINARIAS',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var data in places)
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 250,
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  ClipRRect(
                                    child: Image.asset(data['imagen']),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 233, 152, 32),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            bottomLeft: Radius.circular(30),
                                            topRight: Radius.circular(8))),
                                    child: Text(
                                      'S/' + data['precio'],
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                data['nombre'],
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Veterinarias en Lima',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              for (var data in places)
                Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: AssetImage(data['imagen']),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data['nombre'],
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              SizedBox(height: 15),
                              Text(
                                data['descripcion'],
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 14),
                              ),
                              SizedBox(height: 15),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text('Visitar'),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          'S/.' + data['precio'],
                          style: TextStyle(
                              color: Color.fromARGB(255, 238, 150, 19),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                )
            ],
          ))
        ],
      ),
    );
  }
}

class Boxshadow {}
