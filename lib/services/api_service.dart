// services/api_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/breed.dart';

class ApiService {
  static const String apiUrl = 'https://dogapi.dog/api/v2/breeds';

  Future<List<Breed>> fetchBreeds() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body)['data'];
      return data.map((json) => Breed.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load breeds');
    }
  }
}
