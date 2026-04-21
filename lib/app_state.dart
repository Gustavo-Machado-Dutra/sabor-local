import 'package:flutter/material.dart';

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

  String _email = '';
  String get email => _email;
  set email(String value) {
    _email = value;
  }

  String _name = '';
  String get name => _name;
  set name(String value) {
    _name = value;
  }

  String _CPF = '';
  String get CPF => _CPF;
  set CPF(String value) {
    _CPF = value;
  }

  String _telefone = '';
  String get telefone => _telefone;
  set telefone(String value) {
    _telefone = value;
  }

  String _senha = '';
  String get senha => _senha;
  set senha(String value) {
    _senha = value;
  }

  String _cofirmarsenha = '';
  String get cofirmarsenha => _cofirmarsenha;
  set cofirmarsenha(String value) {
    _cofirmarsenha = value;
  }
}
