import 'package:app_p2sw1/config/constants/constantes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final decoration = InputDecoration(
        labelText: "Código",
        labelStyle: GoogleFonts.anta(
          fontSize: 20,
          color: const Color(0xff424530),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffa58e74), width: 3),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffe09132), width: 3),
          borderRadius: BorderRadius.circular(12),
        ),
        focusColor: const Color(0xff424530),
        prefixIcon: Icon(
          Icons.vpn_key,
          size: size.width * 0.065,
          shadows: shadowPPN3,
        ),
        isDense: true);

    return TextFormField(
        keyboardType: TextInputType.number,
        onChanged: (String value) {},
        style: GoogleFonts.anta(
            fontSize: 20,
            color: const Color(0xff424530),
            fontWeight: FontWeight.bold),
        decoration: decoration);
  }
}