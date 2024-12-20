import 'package:app_p2sw1/presentacion/features/alojamientos/domain/entities/alojamiento.dart';

abstract class AlojamientoDataSource {
  Future<List<Alojamiento>> getAlojamientos();
}
