import 'package:app_p2sw1/presentacion/features/alojamientos/domain/entities/alojamiento.dart';

abstract class AlojamientoRepository {
  Future<List<Alojamiento>> getAlojamientos();
}
