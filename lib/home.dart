import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/breed_provider.dart';
import 'screens/breed_list_screen.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BreedProvider(),
      child: MaterialApp(
        title: 'Dog Breeds',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BreedListScreen(),
      ),
    );
  }
}
