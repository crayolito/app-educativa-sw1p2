import 'package:app_p2sw1/config/constants/constantes.dart';
import 'package:app_p2sw1/presentacion/shared/components/IconButtonCustom.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class OpcionApoderado {
  final String nombre;
  final String image;
  OpcionApoderado({required this.nombre, required this.image});
}

class ControlEstudiante extends StatefulWidget {
  const ControlEstudiante({super.key});

  @override
  State<ControlEstudiante> createState() => _ControlEstudianteState();
}

class _ControlEstudianteState extends State<ControlEstudiante> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final List<OpcionApoderado> listaOpciones = [
      OpcionApoderado(
        nombre: "Calificaciones",
        image: "assets/calificacionesEstudiante.png",
      ),
      OpcionApoderado(
        nombre: "Notificaciones",
        image: "assets/notificaciones.png",
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
                  padding: EdgeInsets.only(
                    top: size.height * 0.045,
                    left: size.width * 0.02,
                    right: size.width * 0.02,
                  ),
                  width: size.width,
                  height: size.height * 0.65,
                  decoration: BoxDecoration(
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
                  child: Column(
                    children: [
                      Container(
                        height: (size.height * 0.65) * 0.465,
                        width: size.width,
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.02,
                                ),
                                alignment: Alignment.center,
                                height: ((size.height * 0.65) * 0.465) * 0.7,
                                width: size.width * 0.58,
                                child: Text(
                                  textAlign: TextAlign.center,
                                  "Consulte las calificaciones del estudiante.",
                                  style: GoogleFonts.anta(
                                    fontSize: 25,
                                    color: const Color(0xff424530),
                                    fontWeight: FontWeight.bold,
                                    shadows: shadowPP,
                                  ),
                                )),
                            GestureDetector(
                              onTap: () {
                                context.push("/calificaciones-estudiante");
                              },
                              child: Container(
                                height: ((size.height * 0.65) * 0.465) * 0.7,
                                width: size.width * 0.38,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.5),
                                        blurRadius: 5,
                                        offset: const Offset(0, 5),
                                      ),
                                    ]),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      listaOpciones[0].image,
                                      width: size.width * 0.27,
                                    ),
                                    Text(
                                      textAlign: TextAlign.center,
                                      listaOpciones[0].nombre,
                                      style: GoogleFonts.anta(
                                        fontSize: 20,
                                        color: const Color(0xff424530),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: (size.height * 0.65) * 0.465,
                        width: size.width,
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                context.push("/notificaciones-apoderado");
                              },
                              child: Container(
                                height: ((size.height * 0.65) * 0.465) * 0.7,
                                width: size.width * 0.38,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.5),
                                        blurRadius: 5,
                                        offset: const Offset(0, 5),
                                      ),
                                    ]),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      listaOpciones[1].image,
                                      width: size.width * 0.27,
                                    ),
                                    Text(
                                      textAlign: TextAlign.center,
                                      listaOpciones[1].nombre,
                                      style: GoogleFonts.anta(
                                        fontSize: 20,
                                        color: const Color(0xff424530),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.02,
                                ),
                                alignment: Alignment.center,
                                height: ((size.height * 0.65) * 0.465) * 0.7,
                                width: size.width * 0.58,
                                child: Text(
                                  textAlign: TextAlign.center,
                                  "Manténgase informado sobre reuniones y la llegada del estudiante al colegio.",
                                  style: GoogleFonts.anta(
                                    fontSize: 25,
                                    color: const Color(0xff424530),
                                    fontWeight: FontWeight.bold,
                                    shadows: shadowPP,
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
              top: size.height * 0.05,
              left: size.width * 0.02,
              child: Container(
                  alignment: Alignment.topLeft,
                  width: size.width * 0.8,
                  height: size.height * 0.15,
                  child: RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: '!Bienvenido¡\nJiwasa Learning',
                            style: GoogleFonts.anta(
                              fontSize: 35,
                              color: Colors.white,
                              shadows: shadowPP,
                            )),
                      ],
                    ),
                  ))),
          Positioned(
              top: size.height * 0.31,
              left: size.width * 0.15,
              right: size.width * 0.15,
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
                child: Text("OPCIONES",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.anta(
                        shadows: shadowPP,
                        fontSize: 28,
                        color: const Color(0xff424530),
                        fontWeight: FontWeight.bold)),
              )),
        ],
      ),
    );
  }
}
