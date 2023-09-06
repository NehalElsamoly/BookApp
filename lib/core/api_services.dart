// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:untitled8/constants.dart';

class ApiServices {
  final Dio dio;
  ApiServices({
    required this.dio,
  });

  Future<Map<String, dynamic>> getServices({required String endPoint}) async {
    final res = await dio.get('$kbooksurl$endPoint');

    return res.data;
  }
}
