import 'package:app_p2sw1/presentacion/features/home/domain/datasources/home_datasource.dart';
import 'package:app_p2sw1/presentacion/features/home/domain/entities/auth.dart';
import 'package:dio/dio.dart';

class HomeDatasourceImpl implements HomeDataSource {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://jsonplaceholder.typicode.com',
    ),
  );

  @override
  Future<AuthUser> loginUser() async {
    try {
      return AuthUser(id: 1, email: '', password: '');
    } catch (e) {
      throw Exception();
    }
  }
}
