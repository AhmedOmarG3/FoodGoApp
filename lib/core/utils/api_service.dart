import 'package:dio/dio.dart';

class ApiService {
  final String _baseUrl = 'https://6890cfa8944bf437b5976ab9.mockapi.io/Api/v1/';
  final Dio _dio;
  ApiService(this._dio);

  Future<dynamic> get({required String endpoint})async {
 var response= await  _dio.get('$_baseUrl$endpoint');
 return response.data;
  }
}
