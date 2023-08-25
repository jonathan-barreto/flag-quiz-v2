import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:quiz_app/app/models/continent_model.dart';

class ContinentController extends ChangeNotifier {
  List<String> routes = [
    '/',
    '/america',
    '/asia',
    '/africa',
    '/europa',
    '/oceania',
  ];

  bool isLoading = true;
  ContinentModel? data;

  void showLoading() {
    isLoading = true;
    notifyListeners();
  }

  void hideLoading() {
    isLoading = false;
    notifyListeners();
  }

  void getData(int index) async {
    showLoading();
    var url = Uri.parse('http://192.168.0.109/flag${routes[index]}');
    var response = await http.get(url);
    var jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
    data = ContinentModel.fromJson(jsonResponse);
    hideLoading();
  }
}
