import 'package:flutter/material.dart';

class HomePageController extends ChangeNotifier {
  List<Map> continents = [
    {'name': 'Todos', 'image': 'assets/disney.png'},
    {'name': 'América', 'image': 'assets/corcovado.png'},
    {'name': 'Ásia', 'image': 'assets/muralha.png'},
    {'name': 'África', 'image': 'assets/piramide.png'},
    {'name': 'Europa', 'image': 'assets/eiffel.png'},
    {'name': 'Oceania', 'image': 'assets/opera.png'},
  ];
}
