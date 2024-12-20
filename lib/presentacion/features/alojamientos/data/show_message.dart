import 'dart:io';

import 'package:app_p2sw1/config/constants/constantes.dart';
import 'package:app_p2sw1/config/paleta-colores.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShowDialogCustom {
  static void showLoadingMessage(BuildContext context) {
    final size = MediaQuery.of(context).size;

    // Android
    if (Platform.isAndroid) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => AlertDialog(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(color: kPrimaryColor, width: 3)),
              title: Column(
                children: [
                  Text("Espere por favor",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.anta(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          shadows: shadowPPN2)),
                  Container(
                      height: 3,
                      width: size.width * 0.55,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ))
                ],
              ),
              content: const SizedBox(
                height: 100,
                width: 100,
                child: Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 5,
                    valueColor: AlwaysStoppedAnimation<Color>(kSecondaryColor),
                  ),
                ),
              )));
      return;
    }

    showCupertinoDialog(
        context: context,
        builder: (context) => const CupertinoAlertDialog(
              title: Text('Espere por favor'),
              content: CupertinoActivityIndicator(),
            ));
  }

  static void showMessageIA(BuildContext context) {
    final size = MediaQuery.of(context).size;

    showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: const Color(0xff424530),
                  width: 4,
                ),
              ),
              height: size.height * 0.5,
              width: size.width * 0.8,
              child: Material(
                color: Colors.transparent,
                child: Column(
                  children: [
                    Text(
                      "PLAN ESTUDIO",
                      style: GoogleFonts.anta(
                          shadows: shadowPP,
                          fontSize: 28,
                          color: const Color(0xff424530),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

  static void showMessageAVIZO(BuildContext context) {
    final size = MediaQuery.of(context).size;
    showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: kPrimaryColor,
                width: 4,
              ),
            ),
            height:
                size.height * 0.8, // Aumenta la altura para acomodar más texto
            width: size.width * 0.8,
            child: Material(
              color: Colors.transparent,
              child: SingleChildScrollView(
                // Agrega un SingleChildScrollView para permitir el desplazamiento
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Plan de Viaje",
                      style: GoogleFonts.anta(
                        shadows: shadowPP,
                        fontSize: 28,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    Text(
                      "Destino: Cusco, Perú\n\n"
                      "Alojamiento Recomendado: Hotel Cusco Plaza\n\n"
                      "Actividades Sugeridas:\n\n"
                      "Visita a Machu Picchu:\n"
                      "Descripción: Explora la ciudadela inca con un guía.\n"
                      "Valle Sagrado:\n"
                      "Descripción: Visita a Ollantaytambo y Pisac.\n"
                      "Recorrido por Cusco:\n"
                      "Descripción: Plaza de Armas, la Catedral y el Qorikancha.\n"
                      "Razones para Escoger Cusco:\n\n"
                      "Historia: Conoce la rica historia y arquitectura inca.\n"
                      "Cultura: Experimenta la cultura y tradiciones peruanas.\n"
                      "Paisajes: Disfruta de impresionantes paisajes naturales.\n"
                      "¡Disfruta tu viaje a Cusco!",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.anta(
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
