import 'package:flutter/material.dart';
import 'package:flutter_mvvm_showcase/src/model/jokes_model.dart';
import 'package:flutter_mvvm_showcase/src/services/joke_service.dart';

class JokeViewModel extends ChangeNotifier {
  final JokeService _jokeService;

  bool _isLoading = true;
  bool _isError = false;
  String _errorMsg = '';
  List<JokesModel> _list = [];

  JokeViewModel(this._jokeService);

  List<JokesModel> get jokesList => _list;

  bool get isLoading => _isLoading;

  bool get isError => _isError;

  String get errorMsg => _errorMsg;

  Future<void> fetchJokes() async {
    _isError = false;
    _isLoading = true;
    notifyListeners();

    try {
      _list = await _jokeService.fetchAllJokes() ?? [];
    } catch (e) {
      debugPrint("Error occurred while fetching jokes: $e");
      _isError = true;
      _errorMsg = e.toString();
    }

    _isLoading = false;
    notifyListeners();
  }
}
