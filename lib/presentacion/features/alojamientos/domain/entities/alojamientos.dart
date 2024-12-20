import 'package:app_p2sw1/presentacion/features/alojamientos/domain/entities/alojamiento.dart';

class Alojamientos {
  List<Alojamiento> alojamientos;

  Alojamientos({required this.alojamientos});

  factory Alojamientos.fromJson(Map<String, dynamic> json) {
    var alojamientosJson = json['data']['findAllAccomodations'] as List;
    List<Alojamiento> alojamientosList = alojamientosJson
        .map((data) => Alojamiento(
              id: data["id"] ?? "",
              nombreAlojamiento: data["company"] ?? "",
              owner: data["owner"] ?? "",
              imageURL: data["imageUrl"] ?? "",
              horarioAtencion: data["schedule"] ?? "",
              nroAtencion: data["attention_number"] ?? "",
              ubicacionCoordenadas: data["coordinates"] ?? "",
              ubicacionDescriptiva: data["description"] ?? "",
              nroEstrellas: data["stars"] ?? "",
              descripcionServiciosGenerales: data["description_services"] ?? "",
              tiposHabitaciones: data["typeRoom"] == null
                  ? []
                  : List<String>.from(data["typeRoom"].map((x) => x)),
              igUrl: data["instagramUrl"] ?? "",
              fbUrl: data["facebookUrl"] ?? "",
              webUrl: data["webUrl"] ?? "",
            ))
        .toList();

    return Alojamientos(alojamientos: alojamientosList);
  }
}
