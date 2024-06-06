import 'dart:io';

import 'package:app_p2sw1/config/constants/constantes.dart';
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
                  side: const BorderSide(color: Color(0xffe09132), width: 3)),
              title: Column(
                children: [
                  Text("Espere por favor",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.anta(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff424530),
                      )),
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
                    valueColor:
                        AlwaysStoppedAnimation<Color>(Color(0xFF00A541)),
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
                  color: const Color(0xff424530),
                  width: 4,
                ),
              ),
              height: size.height * 0.2,
              width: size.width * 0.8,
              child: Material(
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "AVIZO",
                      style: GoogleFonts.anta(
                        shadows: shadowPP,
                        fontSize: 28,
                        color: const Color(0xff424530),
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      "Debe estar presente en el aula para confirmar su asistencia.",
                      style: GoogleFonts.anta(
                        fontSize: 22,
                        color: const Color(0xff424530),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
