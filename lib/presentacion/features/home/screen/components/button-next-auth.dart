import 'package:app_p2sw1/config/constants/constantes.dart';
import 'package:app_p2sw1/presentacion/blocs/authentication/authentication_bloc.dart';
import 'package:app_p2sw1/presentacion/blocs/notificaciones/notificaciones_bloc.dart';
import 'package:app_p2sw1/presentacion/blocs/permissions/permissions_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonAuthentication extends StatelessWidget {
  const ButtonAuthentication({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final notificacionesBloc = BlocProvider.of<NotificacionesBloc>(context);
    final permissionsBloc = BlocProvider.of<PermissionsBloc>(context);
    final authenticationBloc =
        BlocProvider.of<AuthenticationBloc>(context, listen: true);
    final decoration = BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xffa58e74),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 5,
            offset: const Offset(0, 5),
          )
        ]);
    return GestureDetector(
      onTap: () async {
        await permissionsBloc.askGpsAccess();
        await notificacionesBloc.requestPermissions();
        switch (authenticationBloc.state.estadoAuth) {
          case EstadoAuth.apoderado:
            context.push("/interfaz-apoderado");
            break;
          case EstadoAuth.chofer:
            context.push("/interfaz-chofer");
            break;
          case EstadoAuth.maestro:
            context.push("/asistencia-estudiante");
            break;
          case EstadoAuth.estudiante:
            context.push("/toma-asistencia");
            break;
          default:
            break;
        }
      },
      child: Container(
        alignment: Alignment.center,
        height: size.height * 0.07,
        width: size.width * 0.35,
        decoration: decoration,
        child: Text(
          "Ingresar",
          style: GoogleFonts.anta(
            fontSize: 20,
            color: const Color(0xff424530),
            fontWeight: FontWeight.bold,
            shadows: shadowPPN2,
          ),
        ),
      ),
    );
  }
}
