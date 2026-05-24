// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '/app_state.dart';
import '/auth/custom_auth/auth_util.dart';

Map<String, dynamic>? _slMap(dynamic value) {
  if (value is Map) {
    return value.map((key, value) => MapEntry(key.toString(), value));
  }
  return null;
}

int _slReadInt(Map<String, dynamic>? data, List<String> keys) {
  if (data == null) return 0;
  for (final key in keys) {
    final value = data[key];
    if (value is int) return value;
    if (value is num) return value.toInt();
    if (value is String) {
      final parsed = int.tryParse(value);
      if (parsed != null) return parsed;
    }
  }
  return 0;
}

String _slReadString(Map<String, dynamic>? data, List<String> keys) {
  if (data == null) return '';
  for (final key in keys) {
    final value = data[key];
    if (value is String && value.trim().isNotEmpty) return value.trim();
    if (value != null && value is! Map && value is! List) {
      final text = value.toString().trim();
      if (text.isNotEmpty) return text;
    }
  }
  return '';
}

Future<bool> sincronizarUsuarioLogadoXano() async {
  final token = currentAuthenticationToken;

  if (token == null || token.isEmpty) {
    debugPrint('SaborLocal pagamento: usuario sem token de autenticacao.');
    return FFAppState().id_usuario > 0;
  }

  try {
    final response = await http.get(
      Uri.parse('https://x8ki-letl-twmt.n7.xano.io/api:1PHB92OV/auth/me'),
      headers: {'Authorization': 'Bearer $token'},
    );

    debugPrint(
      'SaborLocal pagamento: auth/me status ${response.statusCode}.',
    );

    if (response.statusCode < 200 || response.statusCode >= 300) {
      return FFAppState().id_usuario > 0;
    }

    final decoded = jsonDecode(response.body);
    final root = _slMap(decoded);
    final user = _slMap(root?['user']) ?? root;

    final idUsuario = _slReadInt(user, [
      'id',
      'id_usuario',
      'usuario_id',
      'user_id',
      'client_id',
    ]);

    if (idUsuario <= 0) {
      debugPrint('SaborLocal pagamento: auth/me sem id de usuario valido.');
      return FFAppState().id_usuario > 0;
    }

    FFAppState().id_usuario = idUsuario;

    final nome = _slReadString(user, ['name', 'nome', 'Name']);
    final email = _slReadString(user, ['email', 'Email']);
    final cpf = _slReadString(user, ['CPF', 'cpf', 'cpfCnpj', 'cpf_cnpj']);
    final telefone = _slReadString(user, [
      'telefone',
      'phone',
      'celular',
      'whatsapp',
    ]);

    if (nome.isNotEmpty) FFAppState().name = nome;
    if (email.isNotEmpty) FFAppState().email = email;
    if (cpf.isNotEmpty) FFAppState().CPF = cpf;
    if (telefone.isNotEmpty) FFAppState().telefone = telefone;

    debugPrint('SaborLocal pagamento: usuario Xano sincronizado $idUsuario.');
    return true;
  } catch (error) {
    debugPrint('SaborLocal pagamento: falha ao sincronizar usuario: $error');
    return FFAppState().id_usuario > 0;
  }
}
