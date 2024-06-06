import 'package:app_p2sw1/config/constants/constantes.dart';
import 'package:app_p2sw1/presentacion/blocs/notificaciones/notificaciones_bloc.dart';
import 'package:app_p2sw1/presentacion/features/chofer-bus/data/show_message.dart';
import 'package:app_p2sw1/presentacion/shared/components/IconButtonCustom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class InterfazEstudianteScreen extends StatelessWidget {
  const InterfazEstudianteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final notificacionesBloc = BlocProvider.of<NotificacionesBloc>(context);
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
            height: size.height,
            width: size.width,
            child: Center(
              child: (notificacionesBloc.state.alumnoNotificacion == null)
                  ? const NoHayNotificacion()
                  : const SiHayNotificacion(),
            ),
          ),
          const SideBarOptions()
        ],
      ),
    );
  }
}

class SideBarOptions extends StatelessWidget {
  const SideBarOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final decoration = BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: const Color(0xff424530).withOpacity(0.5),
    );
    return Positioned(
        top: size.height * 0.035,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
          height: size.height * 0.085,
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(3),
                decoration: decoration,
                child: FloatingActionButton(
                  heroTag: "opcion2",
                  onPressed: () {
                    ShowDialogCustom.showMessageIA(context);
                  },
                  backgroundColor: Colors.white.withOpacity(0.85),
                  child: const Icon(
                    FontAwesomeIcons.book,
                    shadows: shadowPP,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xff424530).withOpacity(0.5),
                ),
                child: FloatingActionButton(
                  heroTag: "opcion3",
                  onPressed: () {
                    ShowDialogCustom.showMessageAVIZO(context);
                  },
                  backgroundColor: Colors.white.withOpacity(0.85),
                  child: const Icon(
                    FontAwesomeIcons.question,
                    shadows: shadowPP,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class SiHayNotificacion extends StatelessWidget {
  const SiHayNotificacion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final decoration = BoxDecoration(
      color: const Color(0xffffefcd),
      borderRadius: BorderRadius.circular(15),
      border: Border.all(
        color: const Color(0xff424530),
        width: 4,
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.5),
          blurRadius: 5,
          offset: const Offset(0, 3),
        )
      ],
    );
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(8),
        width: size.width * 0.81,
        height: size.height * 0.51,
        decoration: decoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("CONFIRME\nASISTENCIA",
                textAlign: TextAlign.center,
                style: GoogleFonts.anta(
                    shadows: shadowPP,
                    fontSize: 28,
                    color: const Color(0xff424530),
                    fontWeight: FontWeight.bold)),
            Icon(
              FontAwesomeIcons.clipboardUser,
              size: (size.width * 0.81) * 0.5,
              color: const Color(0xff424530),
              shadows: shadowPPN3,
            ),
            RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: 'Materia :\n',
                      style: GoogleFonts.anta(
                        fontSize: 28,
                        color: const Color(0xff424530),
                        fontWeight: FontWeight.bold,
                      )),
                  TextSpan(
                    text: 'Ciencias Sociales\n',
                    style: GoogleFonts.anta(
                      fontSize: 22,
                      color: const Color(0xff424530),
                    ),
                  ),
                  TextSpan(
                      text: 'Profesor :\n',
                      style: GoogleFonts.anta(
                        fontSize: 28,
                        color: const Color(0xff424530),
                        fontWeight: FontWeight.bold,
                      )),
                  TextSpan(
                    text: 'Juan Perez Sahonero Salas',
                    style: GoogleFonts.anta(
                      fontSize: 20,
                      color: const Color(0xff424530),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NoHayNotificacion extends StatelessWidget {
  const NoHayNotificacion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.81,
      height: size.height * 0.51,
      child: Column(
        children: [
          Container(
              height: (size.height * 0.51) * 0.7,
              width: size.width * 0.81,
              decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage("assets/profesor.png")),
              )),
          Text("No hay eventos pendientes para confirmar asistencia",
              textAlign: TextAlign.center,
              style: GoogleFonts.anta(
                  shadows: shadowPP,
                  fontSize: 28,
                  color: const Color(0xff424530),
                  fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
