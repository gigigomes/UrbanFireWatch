import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  /// Nome da variável que guardará o valor do Dropdown.
  String _selectedCategory = '\"\"';
  String get selectedCategory => _selectedCategory;
  set selectedCategory(String value) {
    _selectedCategory = value;
  }

  /// Armazena o endereço da foto após o upload.
  String _uploadedPhotoURL = '\"\"';
  String get uploadedPhotoURL => _uploadedPhotoURL;
  set uploadedPhotoURL(String value) {
    _uploadedPhotoURL = value;
  }

  /// Armazena a coordenada do mapa que o usuário clicou.
  LatLng? _selectedLocation = LatLng(0, 0);
  LatLng? get selectedLocation => _selectedLocation;
  set selectedLocation(LatLng? value) {
    _selectedLocation = value;
  }
}
