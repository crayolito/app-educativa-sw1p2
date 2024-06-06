import 'package:app_p2sw1/config/constants/constantes.dart';
import 'package:app_p2sw1/presentacion/shared/components/IconButtonCustom.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Calificacion {
  final String materia;
  final double nota;
  Calificacion({required this.materia, required this.nota});
}

class CalificacionesEstudiante extends StatefulWidget {
  const CalificacionesEstudiante({super.key});

  @override
  State<CalificacionesEstudiante> createState() =>
      _CalificacionesEstudianteState();
}

class _CalificacionesEstudianteState extends State<CalificacionesEstudiante> {
  String? selectAlumno;
  String? selectGestion;
  final List<String> listaAlumnos = [
    "Alejandra Guzman Rivero",
    "Juan Carlos Perez Rodriguez",
    "Maria Fernanda Lopez Perez",
    "Pedro Pablo Suarez Sahonero",
    "Luisa Maria Perez Rodriguez",
  ];

  final List<String> listaGestion = [
    "1re Trimestre",
    "2do Trimestre",
    "3er Trimestre",
    "4to Trimestre",
  ];

  @override
  void initState() {
    super.initState();
    selectAlumno = listaAlumnos[0];
    selectGestion = listaGestion[0];
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final List<Calificacion> listaCalificaciones = [
      Calificacion(materia: "Matematicas", nota: 70.5),
      Calificacion(materia: "Lenguaje", nota: 48.3),
      Calificacion(materia: "Ciencias Sociales", nota: 90.5),
      Calificacion(materia: "Historia", nota: 72.3),
      Calificacion(materia: "Educacion Fisica", nota: 100),
      Calificacion(materia: "Arte", nota: 50.1),
      Calificacion(materia: "Religión", nota: 90.5),
      Calificacion(materia: "Inglés", nota: 44.5),
      Calificacion(materia: "Computación", nota: 60.5),
    ];

    return Scaffold(
      floatingActionButton: IconButtonCustom(
        heroTag: "opcion1",
        icon: Icons.arrow_back_ios,
        onPressed: () {
          context.pop();
        },
      ),
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: const NetworkImage(
                    "https://i.pinimg.com/564x/98/33/12/983312daac9e50e0a6ecac1d3c0c489a.jpg"),
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.45), BlendMode.darken),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SafeArea(
                child: Container(
                  alignment: Alignment.center,
                  height: size.height * 0.12,
                  width: size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.015),
                        height: (size.height * 0.12) * 0.7,
                        width: size.width * 0.58,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.95),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: const Color(0xffa58e74),
                            width: 3,
                          ),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            borderRadius: BorderRadius.circular(15),
                            isExpanded: true,
                            items: listaAlumnos
                                .map((e) => DropdownMenuItem(
                                      value: e,
                                      child: Text(e),
                                    ))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                selectAlumno = value!;
                              });
                            },
                            icon: Icon(
                              Icons.arrow_drop_down,
                              size: size.width * 0.09,
                              shadows: shadowPPN3,
                            ),
                            value: selectAlumno,
                            style: GoogleFonts.anta(
                              fontSize: 20,
                              color: const Color(0xff424530),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.015),
                        height: (size.height * 0.12) * 0.7,
                        width: size.width * 0.38,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.95),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: const Color(0xffa58e74),
                            width: 3,
                          ),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            borderRadius: BorderRadius.circular(15),
                            isExpanded: true,
                            items: listaGestion
                                .map((e) => DropdownMenuItem(
                                      value: e,
                                      child: Text(e),
                                    ))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                selectGestion = value!;
                              });
                            },
                            icon: Icon(
                              Icons.arrow_drop_down,
                              size: size.width * 0.09,
                              shadows: shadowPPN3,
                            ),
                            value: selectGestion,
                            style: GoogleFonts.anta(
                              fontSize: 20,
                              color: const Color(0xff424530),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: size.height * 0.01),
                height: size.height * 0.841,
                width: size.width,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...listaCalificaciones.map((e) {
                        return Container(
                          margin: EdgeInsets.only(
                            bottom: size.height * 0.018,
                          ),
                          height: size.height * 0.08,
                          width: size.width,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.9),
                              borderRadius: BorderRadius.circular(15),
                              border: Border(
                                  left: BorderSide(
                                      color: getColorNota(e.nota), width: 7)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.5),
                                  blurRadius: 5,
                                  offset: const Offset(0, 5),
                                ),
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: size.width * 0.58,
                                child: Text(
                                  e.materia,
                                  style: GoogleFonts.anta(
                                      fontSize: 25,
                                      color: const Color(0xff424530),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                width: size.width * 0.005,
                                height: (size.height * 0.08) * 0.7,
                                color: const Color(0xff424530).withOpacity(0.2),
                              ),
                              SizedBox(
                                width: size.width * 0.18,
                                child: Text(
                                  textAlign: TextAlign.center,
                                  e.nota.toString(),
                                  style: GoogleFonts.anta(
                                      fontSize: 25,
                                      color: getColorNota(e.nota),
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color getColorNota(double value) {
    if (value >= 0 && value < 50.9) {
      return Colors.red;
    } else if (value > 50.9 && value < 70.9) {
      return Colors.amber;
    } else {
      return Colors.green;
    }
  }
}
