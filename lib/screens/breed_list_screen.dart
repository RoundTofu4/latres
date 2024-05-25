// screens/breed_list_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/breed_provider.dart';

class BreedListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dog Breeds'),
      ),
      body: Consumer<BreedProvider>(
        builder: (context, breedProvider, child) {
          if (breedProvider.isLoading) {
            return Center(child: CircularProgressIndicator());
          }

          if (breedProvider.breeds.isEmpty) {
            return Center(child: Text('No breeds found'));
          }

          return ListView.builder(
            itemCount: breedProvider.breeds.length,
            itemBuilder: (context, index) {
              final breed = breedProvider.breeds[index];
              return ListTile(
                title: Text(breed.name),
                subtitle: Text(breed.description),
              );
            },
          );
        },
      ),
    );
  }
}
