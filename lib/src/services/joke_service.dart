import 'package:flutter/material.dart';
import 'package:flutter_mvvm_showcase/src/model/jokes_model.dart';
import 'package:flutter_mvvm_showcase/src/services/api_service.dart';

class JokeService {
  final ApiService _apiService = ApiService();

  Future<List<JokesModel>?> fetchAllJokes() async {
    try {
      final response = await _apiService.get("jokes/ten");
      if (response != null) {
        List<dynamic> jsonResponse = response;
        List<JokesModel> jokes =
            jsonResponse.map((json) => JokesModel.fromJson(json)).toList();
        return jokes;
      }
    } catch (e) {
      debugPrint("An error occurred");
      rethrow;
    }
    return null;
  }
}
