import 'package:app_p2sw1/presentacion/features/home/screen/authentication-screen.dart';
import 'package:app_p2sw1/presentacion/features/home/screen/components/button-next-auth.dart';
import 'package:app_p2sw1/presentacion/features/home/screen/components/select-status-auth.dart';
import 'package:app_p2sw1/presentacion/features/home/screen/components/textFromCustom-auth.dart';
import 'package:flutter/material.dart';

class FormCustomAuth extends StatelessWidget {
  const FormCustomAuth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Positioned(
      top: size.height * 0.6,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: size.height * 0.02),
        height: size.height * 0.4,
        width: size.width,
        child: Column(
          children: [
            const CustomTextFormField(),
            SizedBox(
              height: size.height * 0.03,
            ),
            // READ : SELECTOR DE OPCIONES PARA VER SI ES UN (PROFESOR ESTUDIANTE CHOFER APODERADO)
            const SelectorCustomDropdownButtonField(),
            SizedBox(
              height: size.height * 0.03,
            ),
            const ButtonAuthentication(),
            SizedBox(
              height: size.height * 0.02,
            ),
            // READ : MESSAGE DE PETICION DE REGISTRO
            const MessageRegistrationRequest()
          ],
        ),
      ),
    );
  }
}
