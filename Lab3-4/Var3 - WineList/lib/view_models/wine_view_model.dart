import 'package:flutter/services.dart';
import 'package:list_project/models/wine.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:convert';
import 'package:list_project/utils/json_string.dart';

class WineViewModel {
  final jsonData = rootBundle.loadString('assets/v3.json');

  final List<Wine> wines = (jsonDecode(jsonString)['carousel'] as List)
      .map((json) => Wine.fromJson(json))
      .toList();
}

final wineProvider = Provider((ref) => WineViewModel());
