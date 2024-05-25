// models/breed.dart
class Breed {
  final String id;
  final String name;
  final String description;

  Breed({required this.id, required this.name, required this.description});

  factory Breed.fromJson(Map<String, dynamic> json) {
    return Breed(
      id: json['id'],
      name: json['attributes']['name'],
      description: json['attributes']['description'],
    );
  }
}
