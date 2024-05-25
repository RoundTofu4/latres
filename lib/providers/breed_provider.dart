// providers/breed_provider.dart
import 'package:flutter/material.dart';
import '../models/breed.dart';
import '../services/api_service.dart';

class BreedProvider with ChangeNotifier {
  List<Breed> _breeds = [];
  bool _isLoading = true;

  List<Breed> get breeds => _breeds;
  bool get isLoading => _isLoading;

  BreedProvider() {
    fetchBreeds();
  }

  Future<void> fetchBreeds() async {
    _isLoading = true;
    notifyListeners();

    try {
      _breeds = await ApiService().fetchBreeds();
    } catch (error) {
      _breeds = [];
    }

    _isLoading = false;
    notifyListeners();
  }
}
