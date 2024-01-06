import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
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

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _navOpen = prefs.getBool('ff_navOpen') ?? _navOpen;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _navOpen = true;
  bool get navOpen => _navOpen;
  set navOpen(bool _value) {
    _navOpen = _value;
    prefs.setBool('ff_navOpen', _value);
  }

  String _imagePath = '';
  String get imagePath => _imagePath;
  set imagePath(String _value) {
    _imagePath = _value;
  }

  String _datoBuscarNoticia = '';
  String get datoBuscarNoticia => _datoBuscarNoticia;
  set datoBuscarNoticia(String _value) {
    _datoBuscarNoticia = _value;
  }

  int _idUsuario = 0;
  int get idUsuario => _idUsuario;
  set idUsuario(int _value) {
    _idUsuario = _value;
  }

  int _idArtista = 0;
  int get idArtista => _idArtista;
  set idArtista(int _value) {
    _idArtista = _value;
  }

  int _idDisciplina = 0;
  int get idDisciplina => _idDisciplina;
  set idDisciplina(int _value) {
    _idDisciplina = _value;
  }

  bool _datoBuscarDisciplina = false;
  bool get datoBuscarDisciplina => _datoBuscarDisciplina;
  set datoBuscarDisciplina(bool _value) {
    _datoBuscarDisciplina = _value;
  }

  bool _BuscarDisciplina = false;
  bool get BuscarDisciplina => _BuscarDisciplina;
  set BuscarDisciplina(bool _value) {
    _BuscarDisciplina = _value;
  }

  String _imagenGaleria = '';
  String get imagenGaleria => _imagenGaleria;
  set imagenGaleria(String _value) {
    _imagenGaleria = _value;
  }

  String _imagenGaleriat = '';
  String get imagenGaleriat => _imagenGaleriat;
  set imagenGaleriat(String _value) {
    _imagenGaleriat = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
