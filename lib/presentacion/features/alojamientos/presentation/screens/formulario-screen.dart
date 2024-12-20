import 'package:app_p2sw1/config/constants/constantes.dart';
import 'package:app_p2sw1/config/paleta-colores.dart';
import 'package:app_p2sw1/presentacion/shared/components/IconButtonCustom.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class FormularioScreen extends StatelessWidget {
  const FormularioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
        floatingActionButton: IconButtonCustom(
            onPressed: () {
              context.pop();
            },
            icon: Icons.arrow_back,
            heroTag: "AdiosdeFormulario"),
        resizeToAvoidBottomInset: false,
        body: Container(
          padding: EdgeInsets.only(
              top: size.height * 0.05,
              left: size.width * 0.05,
              right: size.width * 0.05),
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const NetworkImage(
                  "https://i.pinimg.com/564x/3c/74/98/3c74985ba2a1e4b094cd9f8047b99b49.jpg"),
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.darken),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              const Custom1TextFormField(
                  placeholder: "Lugar Origen",
                  icon: FontAwesomeIcons.plane,
                  color: Colors.white,
                  keyboardType: TextInputType.text),
              SizedBox(height: size.height * 0.02),
              const Custom1TextFormField(
                  placeholder: "Lugar Destino",
                  icon: FontAwesomeIcons.plane,
                  color: Colors.white,
                  keyboardType: TextInputType.text),
              SizedBox(height: size.height * 0.02),
              CustomTextArea(
                height: size.height * 0.23,
                width: size.width * 0.9,
                titulo: "¿Que opinas de tu estadia?",
              ),
              SizedBox(height: size.height * 0.02),
              CustomTextArea(
                height: size.height * 0.23,
                width: size.width * 0.9,
                titulo: "¿Fue buen el lugar destino?",
              ),
              SizedBox(height: size.height * 0.02),
              CustomTextArea(
                height: size.height * 0.23,
                width: size.width * 0.9,
                titulo: "¿Cual fue motivo de tu viaje?",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextArea extends StatelessWidget {
  const CustomTextArea({
    super.key,
    required this.width,
    required this.height,
    required this.titulo,
  });

  final double width;
  final double height;
  final String titulo;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final decoration = BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: kTerciaryColor.withOpacity(0.8),
      border: Border.all(color: kSecondaryColor, width: 3),
    );
    return Container(
      width: width,
      height: height,
      decoration: decoration,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.02,
              vertical: size.height * 0.01,
            ),
            child: Row(
              children: [
                const Icon(
                  FontAwesomeIcons.penToSquare,
                  size: 35,
                  shadows: shadowPPN3,
                ),
                SizedBox(
                  width: size.width * 0.02,
                ),
                Text(
                  titulo,
                  style: GoogleFonts.anta(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          TextFormField(
            maxLines: 4,
            style: GoogleFonts.anta(
              fontSize: 15,
              color: Colors.black,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                labelStyle: GoogleFonts.anta(
                  fontSize: 20,
                  color: Colors.white,
                ),
                focusColor: Colors.white,
                isDense: true),
          )
        ],
      ),
    );
  }
}

class Custom1TextFormField extends StatelessWidget {
  const Custom1TextFormField({
    super.key,
    required this.placeholder,
    required this.icon,
    required this.color,
    required this.keyboardType,
    this.maxLines,
  });

  final String placeholder;
  final IconData icon;
  final Color color;
  final TextInputType keyboardType;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final decoration = InputDecoration(
        labelText: placeholder,
        labelStyle: GoogleFonts.anta(
          fontSize: 20,
          color: color,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: kSecondaryColor, width: 3),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: kSecondaryColor, width: 3),
          borderRadius: BorderRadius.circular(12),
        ),
        focusColor: const Color(0xff424530),
        prefixIcon: Icon(
          icon,
          size: size.width * 0.065,
          shadows: shadowPPN3,
        ),
        isDense: true);

    return TextFormField(
        maxLines: maxLines,
        cursorColor: kSecondaryColor,
        keyboardType: keyboardType,
        onChanged: (String value) {},
        style: GoogleFonts.anta(
            fontSize: 20, color: color, fontWeight: FontWeight.bold),
        decoration: decoration);
  }
}
