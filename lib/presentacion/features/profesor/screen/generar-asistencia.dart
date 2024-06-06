import 'package:app_p2sw1/config/constants/constantes.dart';
import 'package:app_p2sw1/presentacion/shared/components/IconButtonCustom.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Materia {
  final String nombre;
  final String image;

  Materia({required this.nombre, required this.image});
}

class GenerarAsistencia extends StatefulWidget {
  const GenerarAsistencia({super.key});

  @override
  State<GenerarAsistencia> createState() => _GenerarAsistenciaState();
}

class _GenerarAsistenciaState extends State<GenerarAsistencia> {
  String? dropdownValue = '1ro S.A.';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final listaGrados = [
      "1ro S.A.",
      "2do P.C",
      "3ro P.B.",
      "4to P.A",
      "5to S.C",
      "6to P.B.",
    ];

    final List<Materia> listaMateria = [
      Materia(
        nombre: "Matemáticas",
        image: "assets/matematicas.png",
      ),
      Materia(
        nombre: "Lenguaje",
        image: "assets/lenguaje.png",
      ),
      Materia(
        nombre: "Ciencias Sociales",
        image: "assets/cienciasSociales.png",
      ),
      Materia(
        nombre: "Historia",
        image: "assets/historia.png",
      ),
      Materia(
        nombre: "Educación Física",
        image: "assets/educacionFisica.png",
      ),
      Materia(
        nombre: "Arte",
        image: "assets/arte.png",
      ),
      Materia(
        nombre: "Religión",
        image: "assets/religion.png",
      ),
      Materia(
        nombre: "Inglés",
        image: "assets/ingles.png",
      ),
      Materia(
        nombre: "Computación",
        image: "assets/computacion.png",
      ),
    ];

    return Scaffold(
      floatingActionButton: IconButtonCustom(
        heroTag: "opcion1",
        icon: Icons.logout,
        onPressed: () {
          context.go("/");
        },
      ),
      body: Stack(
        children: [
          SizedBox(
            width: size.width,
            height: size.height,
            child: Column(
              children: [
                Container(
                  width: size.width,
                  height: size.height * 0.35,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const NetworkImage(
                        "https://www.moseleyarchitects.com/wp-content/uploads/2023/11/2022-southeast-alamance-hs-700x507.jpg",
                      ),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.3),
                        BlendMode.darken,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: size.height * 0.045),
                  width: size.width,
                  height: size.height * 0.65,
                  decoration: BoxDecoration(
                    // color: Colors.amber,
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.6),
                        Colors.transparent,
                      ],
                      stops: const [0, 0.03],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: GridView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: listaMateria.length,
                      padding: EdgeInsets.only(
                        bottom: size.height * 0.01,
                      ),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: size.height * 0.27,
                        childAspectRatio: size.width * 0.05,
                      ),
                      itemBuilder: ((context, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.02,
                                vertical: size.height * 0.015),
                            margin: EdgeInsets.symmetric(
                                horizontal: size.width * 0.025,
                                vertical: size.height * 0.015),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.5),
                                      blurRadius: 5,
                                      offset: const Offset(0, 5))
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  listaMateria[index].image,
                                  width: size.width * 0.27,
                                ),
                                Text(
                                  textAlign: TextAlign.center,
                                  listaMateria[index].nombre,
                                  style: GoogleFonts.anta(
                                    fontSize: 22,
                                    color: const Color(0xff424530),
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      })),
                )
              ],
            ),
          ),
          Positioned(
              top: size.height * 0.05,
              left: size.width * 0.02,
              child: Container(
                  alignment: Alignment.topCenter,
                  width: size.width * 0.8,
                  height: size.height * 0.15,
                  child: RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: '!Bienvenido Profesor¡\n',
                            style: GoogleFonts.anta(
                              fontSize: 30,
                              color: Colors.white,
                              shadows: shadowPP,
                            )),
                        TextSpan(
                          text:
                              'Su dedicación es clave para el éxito de nuestros estudiantes.',
                          style: GoogleFonts.anta(
                            fontSize: 20,
                            color: Colors.white,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ))),
          Positioned(
              top: size.height * 0.31,
              left: size.width * 0.05,
              right: size.width * 0.05,
              child: Container(
                alignment: Alignment.center,
                width: size.width,
                height: size.height * 0.08,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: const Color(0xff424530),
                    width: 3,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 5,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Text("ASISTENCIA",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.anta(
                        fontSize: 28,
                        color: const Color(0xff424530),
                        fontWeight: FontWeight.bold)),
              )),
          Positioned(
              left: size.width * 0.88,
              top: size.height * 0.035,
              child: SizedBox(
                  width: size.width * 0.1,
                  height: size.height * 0.075,
                  child: PopupMenuButton<String>(
                    icon: Icon(
                      Icons.more_vert,
                      color: const Color(0xff424530),
                      size: size.width * 0.1,
                      shadows: shadowPP,
                    ),
                    itemBuilder: (BuildContext context) {
                      return listaGrados.map((String value) {
                        return PopupMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: GoogleFonts.anta(
                              fontSize: 22,
                              color: const Color(0xff424530),
                            ),
                          ),
                        );
                      }).toList();
                    },
                    onSelected: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                  )))
        ],
      ),
    );
  }
}
