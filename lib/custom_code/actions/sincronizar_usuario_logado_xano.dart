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
  if (value is List && value.isNotEmpty) {
    return _slMap(value.first);
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
      final parsedInt = int.tryParse(value);
      if (parsedInt != null) return parsedInt;
      final parsedDouble = double.tryParse(value);
      if (parsedDouble != null) return parsedDouble.toInt();
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

Map<String, dynamic>? _slUserFrom(Map<String, dynamic>? root) {
  if (root == null) return null;
  final data = _slMap(root['data']);
  final result = _slMap(root['result']);
  return _slMap(root['user']) ??
      _slMap(root['usuario']) ??
      _slMap(root['record']) ??
      _slMap(root['me']) ??
      _slMap(data?['user']) ??
      _slMap(data?['usuario']) ??
      _slMap(data?['record']) ??
      _slMap(data?['me']) ??
      data ??
      _slMap(result?['user']) ??
      _slMap(result?['usuario']) ??
      _slMap(result?['record']) ??
      result ??
      root;
}

Map<String, dynamic> _slMerge(
  Map<String, dynamic>? primary,
  Map<String, dynamic>? secondary,
) {
  final merged = <String, dynamic>{};
  if (secondary != null) merged.addAll(secondary);
  if (primary != null) {
    for (final entry in primary.entries) {
      final value = entry.value;
      final isEmptyString = value is String && value.trim().isEmpty;
      if (value != null && !isEmptyString) {
        merged[entry.key] = value;
      }
    }
  }
  return merged;
}

bool _slAppStateReadyForPayment() {
  return FFAppState().id_usuario > 0 &&
      FFAppState().CPF.trim().isNotEmpty &&
      FFAppState().telefone.trim().isNotEmpty;
}

bool _slHasContact(Map<String, dynamic>? user) {
  final cpf = _slReadString(user, ['CPF', 'cpf', 'cpfCnpj', 'cpf_cnpj']);
  final telefone = _slReadString(user, [
    'telefone',
    'phone',
    'celular',
    'whatsapp',
  ]);
  return cpf.isNotEmpty && telefone.isNotEmpty;
}

Future<Map<String, dynamic>?> _slFetchUserById(int userId) async {
  if (userId <= 0) return null;
  final response = await http.get(
    Uri.parse('https://x8ki-letl-twmt.n7.xano.io/api:YkYaWxLt/user/$userId'),
  );
  debugPrint(
      'SaborLocal pagamento: user/$userId status ${response.statusCode}.');
  if (response.statusCode < 200 || response.statusCode >= 300) {
    return null;
  }
  return _slUserFrom(_slMap(jsonDecode(response.body)));
}

Future<Map<String, dynamic>?> _slFetchClienteByUserId(int userId) async {
  if (userId <= 0) return null;

  var page = 1;
  while (page <= 10) {
    final response = await http.get(
      Uri.parse(
        'https://x8ki-letl-twmt.n7.xano.io/api:YkYaWxLt/cliente?page=$page',
      ),
    );
    debugPrint(
      'SaborLocal pagamento: cliente page $page status ${response.statusCode}.',
    );
    if (response.statusCode < 200 || response.statusCode >= 300) {
      return null;
    }

    final decoded = jsonDecode(response.body);
    final root = _slMap(decoded);
    final items = decoded is List ? decoded : root?['items'];
    if (items is List) {
      for (final item in items) {
        final cliente = _slMap(item);
        if (_slReadInt(cliente, ['user_id', 'usuario_id', 'id_usuario']) ==
            userId) {
          return cliente;
        }
      }
    }

    final nextPage = root?['nextPage'];
    if (nextPage == null || nextPage.toString().isEmpty) break;
    page = int.tryParse(nextPage.toString()) ?? (page + 1);
  }

  return null;
}

Future<bool> sincronizarUsuarioLogadoXano() async {
  final token = currentAuthenticationToken;

  if (token == null || token.isEmpty) {
    debugPrint('SaborLocal pagamento: usuario sem token de autenticacao.');
    return _slAppStateReadyForPayment();
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
      return _slAppStateReadyForPayment();
    }

    final decoded = jsonDecode(response.body);
    final root = _slMap(decoded);
    var user = _slUserFrom(root);

    final idUsuario = _slReadInt(user, [
      'id',
      'id_usuario',
      'usuario_id',
      'user_id',
      'client_id',
    ]);

    if (idUsuario <= 0) {
      debugPrint('SaborLocal pagamento: auth/me sem id de usuario valido.');
      return _slAppStateReadyForPayment();
    }

    if (!_slHasContact(user)) {
      final userById = await _slFetchUserById(idUsuario);
      user = _slMerge(userById, user);
    }

    if (!_slHasContact(user)) {
      final cliente = await _slFetchClienteByUserId(idUsuario);
      user = _slMerge(cliente, user);
    }

    final nome = _slReadString(user, ['name', 'nome', 'Name']);
    final email = _slReadString(user, ['email', 'Email']);
    final cpf = _slReadString(user, ['CPF', 'cpf', 'cpfCnpj', 'cpf_cnpj']);
    final telefone = _slReadString(user, [
      'telefone',
      'phone',
      'celular',
      'whatsapp',
    ]);

    FFAppState().update(() {
      FFAppState().id_usuario = idUsuario;
      if (nome.isNotEmpty) FFAppState().name = nome;
      if (email.isNotEmpty) FFAppState().email = email;
      if (cpf.isNotEmpty) FFAppState().CPF = cpf;
      if (telefone.isNotEmpty) FFAppState().telefone = telefone;
    });

    debugPrint('SaborLocal pagamento: usuario Xano sincronizado $idUsuario.');
    return _slAppStateReadyForPayment();
  } catch (error) {
    debugPrint('SaborLocal pagamento: falha ao sincronizar usuario: $error');
    return _slAppStateReadyForPayment();
  }
}
