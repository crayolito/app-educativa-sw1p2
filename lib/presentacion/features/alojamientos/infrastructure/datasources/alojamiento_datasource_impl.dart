import 'dart:async';

import 'package:app_p2sw1/presentacion/features/alojamientos/domain/datasources/alojamiento_datasource.dart';
import 'package:app_p2sw1/presentacion/features/alojamientos/domain/entities/alojamiento.dart';
import 'package:dio/dio.dart';

class AlojamientoDataSourceImpl extends AlojamientoDataSource {
  final dio = Dio();
  var headers = {'Content-Type': 'application/json'};
  var data =
      '''{"query":"query{\\r\\n  findAllAccomodations{\\r\\n    id,\\r\\n    company,\\r\\n    owner,\\r\\n    imageUrl,\\r\\n    schedule,\\r\\n    attention_number,\\r\\n    coordinates,\\r\\n    description,\\r\\n    stars,\\r\\n    description_services,\\r\\n    typeRoom,\\r\\n    instagramUrl,\\r\\n    facebookUrl,\\r\\n    webUrl\\r\\n  }\\r\\n}","variables":{}}''';
  @override
  Future<List<Alojamiento>> getAlojamientos() async {
    try {
      var response = await dio.request(
        'https://springbootgraphqlsw2-production.up.railway.app/graphql',
        options: Options(
          method: 'POST',
          headers: headers,
        ),
        data: data,
      );
      return alojamientosDataAuxliar;
      // if (response.statusCode == 200) {
      //   final structureData = Alojamientos.fromJson(response.data);
      //   return structureData.alojamientos;
      // } else {
      //   throw Exception('No fue una respuesta 200');
      // }
    } catch (e) {
      throw Exception(
        'Error al obtener los datos $e',
      );
    }
  }
}
