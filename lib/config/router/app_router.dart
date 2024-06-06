import 'package:app_p2sw1/presentacion/features/apoderado/screen/calificaciones-estudiante.dart';
import 'package:app_p2sw1/presentacion/features/apoderado/screen/control-estudiante.dart';
import 'package:app_p2sw1/presentacion/features/apoderado/screen/notificaciones-apoderado.dart';
import 'package:app_p2sw1/presentacion/features/chofer-bus/screens/interfaz-ruta.dart';
import 'package:app_p2sw1/presentacion/features/estudiante/screens/asistencia-screen.dart';
import 'package:app_p2sw1/presentacion/features/home/screen/authentication-screen.dart';
import 'package:app_p2sw1/presentacion/features/profesor/screen/generar-asistencia.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(routes: [
  GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
  // NOTIFICACIONES
  // GoRoute(
  //   path: '/push-details/:messageId',
  //   builder: (context, state) {
  //     print(state.pathParameters['messageId']);
  //     return DetailsScreen(
  //       pushMessageId: state.pathParameters['messageId'] ?? '',
  //     );
  //   },
  // ),
  // CHOFER
  GoRoute(
      path: '/interfaz-chofer',
      builder: (context, state) => const MapaRutasChofer()),
  // APODERADO
  GoRoute(
      path: '/interfaz-apoderado',
      builder: (context, state) => const ControlEstudiante()),
  GoRoute(
      path: '/notificaciones-apoderado',
      builder: (context, state) => const NotificacionesApoderado()),
  GoRoute(
      path: '/calificaciones-estudiante',
      builder: (context, state) => const CalificacionesEstudiante()),
  // ESTUDIANTE
  GoRoute(
      path: '/toma-asistencia',
      builder: (context, state) => const InterfazEstudianteScreen()),
  // PROFESOR
  GoRoute(
      path: '/asistencia-estudiante',
      builder: (context, state) => const GenerarAsistencia()),
]);
