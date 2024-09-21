import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Api {
  final dio = Dio();
  Future<Response> get({required String url}) async {
    final Response response = await dio.get(url);

    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception('status code is ${response.statusCode}');
    }
  }

  Future<Map<String, dynamic>> post(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    final Map<String, String> headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/x-www-form-urlencoded',
    };
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    final Response response =
        await dio.post(url, data: body, options: Options(headers: headers));
    if (response.statusCode == 200) {
      Map<String, dynamic> data = response.data;
      return data;
    } else {
      throw Exception(
          'Status code is ${response.statusCode} with body ${response.data}');
    }
  }

  Future<Map<String, dynamic>> put({
    required String url,
    @required dynamic body,
  }) async {
    final Map<String, String> headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/x-www-form-urlencoded',
    };

    try {
      final Response response = await Dio().put(
        url,
        data: body,
        options: Options(headers: headers),
      );

      if (response.statusCode == 200) {
        if (response.data is String) {
          return jsonDecode(response.data) as Map<String, dynamic>;
        }

        return response.data as Map<String, dynamic>;
      } else {
        throw Exception(
            'Failed to update data. Status code: ${response.statusCode}');
      }
    } on DioException catch (e) {
      throw Exception('Dio error: ${e.toString()}');
    } catch (e) {
      throw Exception('General error: ${e.toString()}');
    }
  }
}
