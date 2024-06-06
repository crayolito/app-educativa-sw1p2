import 'package:app_p2sw1/config/constants/constantes.dart';
import 'package:app_p2sw1/presentacion/shared/components/IconButtonCustom.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificacionesApoderado extends StatelessWidget {
  const NotificacionesApoderado({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

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
                    "https://i.pinimg.com/564x/a9/b3/b7/a9b3b7f8a8ec2339bb2b4959666ec520.jpg"),
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.45), BlendMode.darken),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            SafeArea(
                child: Container(
                    alignment: Alignment.center,
                    width: size.width,
                    height: size.height * 0.1,
                    child: Text(
                      textAlign: TextAlign.center,
                      "NOTIFICACIONES",
                      style: GoogleFonts.anta(
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          shadows: shadowPPN3),
                    ))),
            Container(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.015),
              width: size.width,
              height: size.height * 0.864,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // NOTIFICACIONES LLEGA DEL BUS
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.02),
                      margin: EdgeInsets.only(
                          bottom: size.height * 0.02, top: size.height * 0.02),
                      width: size.width,
                      height: size.height * 0.27,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.5),
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: size.width * 0.01),
                            height: (size.height * 0.3) * 0.3,
                            width: size.width,
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      right: size.width * 0.015),
                                  height: (size.height * 0.3) * 0.25,
                                  width: size.width * 0.2,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/reunionColegio.png'),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                Text("REUNION",
                                    style: GoogleFonts.anta(
                                      fontSize: 35,
                                      color: const Color(0xff424530),
                                      fontWeight: FontWeight.bold,
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: (size.height * 0.3) * 0.55,
                            width: size.width,
                            child: RichText(
                              textAlign: TextAlign.start,
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis,
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Fecha : ',
                                      style: GoogleFonts.anta(
                                        fontSize: 20,
                                        color: const Color(0xff424530),
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                    text: '15 de junio de 2024\n',
                                    style: GoogleFonts.anta(
                                      fontSize: 20,
                                      color: const Color(0xff424530),
                                    ),
                                  ),
                                  TextSpan(
                                      text: 'Hora : ',
                                      style: GoogleFonts.anta(
                                        fontSize: 20,
                                        color: const Color(0xff424530),
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                    text: '07:00 pm \n',
                                    style: GoogleFonts.anta(
                                      fontSize: 20,
                                      color: const Color(0xff424530),
                                    ),
                                  ),
                                  TextSpan(
                                      text: 'Lugar : ',
                                      style: GoogleFonts.anta(
                                        fontSize: 20,
                                        color: const Color(0xff424530),
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                    text: 'Sala de Reuniones\n',
                                    style: GoogleFonts.anta(
                                      fontSize: 20,
                                      color: const Color(0xff424530),
                                    ),
                                  ),
                                  TextSpan(
                                      text: 'Asunto : ',
                                      style: GoogleFonts.anta(
                                        fontSize: 20,
                                        color: const Color(0xff424530),
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                    text:
                                        'Evaluación del Trimestre y Planificación de Actividades',
                                    style: GoogleFonts.anta(
                                      fontSize: 20,
                                      color: const Color(0xff424530),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    // NOTIFICACIONES DE SOLICITUD REUNION ACTIVIDAD
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.02),
                      margin: EdgeInsets.only(
                          bottom: size.height * 0.02, top: size.height * 0.02),
                      width: size.width,
                      height: size.height * 0.21,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.5),
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: size.width * 0.01),
                            height: (size.height * 0.3) * 0.3,
                            width: size.width,
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      right: size.width * 0.015),
                                  height: (size.height * 0.3) * 0.25,
                                  width: size.width * 0.2,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/autoBus.png'),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                Text("AUTO BUS",
                                    style: GoogleFonts.anta(
                                      fontSize: 35,
                                      color: const Color(0xff424530),
                                      fontWeight: FontWeight.bold,
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: (size.height * 0.3) * 0.3,
                            width: size.width,
                            child: RichText(
                              textAlign: TextAlign.start,
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis,
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Asunto : ',
                                      style: GoogleFonts.anta(
                                        fontSize: 20,
                                        color: const Color(0xff424530),
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                    text:
                                        'El autobús que recogió a la estudiante Maribel López Sahonero Salas ha llegado al colegio.',
                                    style: GoogleFonts.anta(
                                      fontSize: 20,
                                      color: const Color(0xff424530),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
