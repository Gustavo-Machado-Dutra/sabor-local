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

Map<String, dynamic>? _slCadastroMap(dynamic value) {
  if (value is Map) {
    return value.map((key, value) => MapEntry(key.toString(), value));
  }
  if (value is List && value.isNotEmpty) {
    return _slCadastroMap(value.first);
  }
  return null;
}

String _slCadastroString(Map<String, dynamic>? data, List<String> keys) {
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

int _slCadastroInt(Map<String, dynamic>? data, List<String> keys) {
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

Map<String, dynamic>? _slCadastroUserFrom(Map<String, dynamic>? root) {
  if (root == null) return null;
  final data = _slCadastroMap(root['data']);
  final result = _slCadastroMap(root['result']);
  return _slCadastroMap(root['user']) ??
      _slCadastroMap(root['usuario']) ??
      _slCadastroMap(root['record']) ??
      _slCadastroMap(root['me']) ??
      _slCadastroMap(data?['user']) ??
      _slCadastroMap(data?['usuario']) ??
      _slCadastroMap(data?['record']) ??
      _slCadastroMap(data?['me']) ??
      data ??
      _slCadastroMap(result?['user']) ??
      _slCadastroMap(result?['usuario']) ??
      _slCadastroMap(result?['record']) ??
      result ??
      root;
}

String _slCadastroTokenFrom(Map<String, dynamic>? root) {
  final keys = [
    'authToken',
    'auth_token',
    'token',
    'accessToken',
    'access_token',
    'jwt',
  ];
  final data = _slCadastroMap(root?['data']);
  final auth = _slCadastroMap(root?['auth']);
  final result = _slCadastroMap(root?['result']);
  final session = _slCadastroMap(root?['session']);
  return _slCadastroString(root, keys).isNotEmpty
      ? _slCadastroString(root, keys)
      : _slCadastroString(data, keys).isNotEmpty
          ? _slCadastroString(data, keys)
          : _slCadastroString(auth, keys).isNotEmpty
              ? _slCadastroString(auth, keys)
              : _slCadastroString(result, keys).isNotEmpty
                  ? _slCadastroString(result, keys)
                  : _slCadastroString(session, keys);
}

Future<Map<String, dynamic>?> _slCadastroFetchMe(String token) async {
  if (token.isEmpty) return null;
  final response = await http.get(
    Uri.parse('https://x8ki-letl-twmt.n7.xano.io/api:1PHB92OV/auth/me'),
    headers: {'Authorization': 'Bearer $token'},
  );
  debugPrint('SaborLocal cadastro: auth/me status ${response.statusCode}.');
  if (response.statusCode < 200 || response.statusCode >= 300) return null;
  return _slCadastroMap(jsonDecode(response.body));
}

Future<Map<String, dynamic>?> _slCadastroLogin(
  String email,
  String senha,
) async {
  final response = await http.post(
    Uri.parse('https://x8ki-letl-twmt.n7.xano.io/api:1PHB92OV/auth/login'),
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({'email': email, 'password': senha}),
  );
  debugPrint(
      'SaborLocal cadastro: login pos-cadastro status ${response.statusCode}.');
  if (response.statusCode < 200 || response.statusCode >= 300) return null;
  return _slCadastroMap(jsonDecode(response.body));
}

Future<bool> cadastrarUsuarioXano(
  String nome,
  String email,
  String cpf,
  String telefone,
  String senha,
  String confirmarSenha,
) async {
  final cadastroNome = nome.trim();
  final cadastroEmail = email.trim();
  final cadastroCpf = cpf.trim();
  final cadastroTelefone = telefone.trim();
  final cadastroSenha = senha;
  final cadastroConfirmacao = confirmarSenha;

  if (cadastroNome.isEmpty ||
      cadastroEmail.isEmpty ||
      cadastroCpf.isEmpty ||
      cadastroTelefone.isEmpty ||
      cadastroSenha.isEmpty ||
      cadastroSenha != cadastroConfirmacao) {
    return false;
  }

  try {
    final signupResponse = await http.post(
      Uri.parse('https://x8ki-letl-twmt.n7.xano.io/api:1PHB92OV/auth/signup'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'name': cadastroNome,
        'email': cadastroEmail,
        'password': cadastroSenha,
        'CPF': cadastroCpf,
        'telefone': cadastroTelefone,
      }),
    );

    debugPrint(
        'SaborLocal cadastro: auth/signup status ${signupResponse.statusCode}.');

    if (signupResponse.statusCode < 200 || signupResponse.statusCode >= 300) {
      return false;
    }

    var root = _slCadastroMap(jsonDecode(signupResponse.body));
    var user = _slCadastroUserFrom(root);
    var token = _slCadastroTokenFrom(root);

    var idUsuario = _slCadastroInt(user, [
      'id',
      'id_usuario',
      'usuario_id',
      'user_id',
      'client_id',
    ]);

    if ((idUsuario <= 0 || token.isEmpty)) {
      final loginRoot = await _slCadastroLogin(cadastroEmail, cadastroSenha);
      if (loginRoot != null) {
        root = loginRoot;
        user = _slCadastroUserFrom(root);
        token = _slCadastroTokenFrom(root);
        idUsuario = _slCadastroInt(user, [
          'id',
          'id_usuario',
          'usuario_id',
          'user_id',
          'client_id',
        ]);
      }
    }

    if (idUsuario <= 0 && token.isNotEmpty) {
      final meRoot = await _slCadastroFetchMe(token);
      final meUser = _slCadastroUserFrom(meRoot);
      final meId = _slCadastroInt(meUser, [
        'id',
        'id_usuario',
        'usuario_id',
        'user_id',
        'client_id',
      ]);
      if (meId > 0) {
        idUsuario = meId;
        user = meUser;
      }
    }

    if (idUsuario <= 0) {
      debugPrint('SaborLocal cadastro: resposta sem id de usuario valido.');
      return false;
    }

    final nomeUsuario =
        _slCadastroString(user, ['name', 'nome', 'Name']).isNotEmpty
            ? _slCadastroString(user, ['name', 'nome', 'Name'])
            : cadastroNome;
    final emailUsuario = _slCadastroString(user, ['email', 'Email']).isNotEmpty
        ? _slCadastroString(user, ['email', 'Email'])
        : cadastroEmail;
    final cpfUsuario =
        _slCadastroString(user, ['CPF', 'cpf', 'cpfCnpj', 'cpf_cnpj'])
                .isNotEmpty
            ? _slCadastroString(user, ['CPF', 'cpf', 'cpfCnpj', 'cpf_cnpj'])
            : cadastroCpf;
    final telefoneUsuario =
        _slCadastroString(user, ['telefone', 'phone', 'celular', 'whatsapp'])
                .isNotEmpty
            ? _slCadastroString(user, [
                'telefone',
                'phone',
                'celular',
                'whatsapp',
              ])
            : cadastroTelefone;

    FFAppState().update(() {
      FFAppState().id_usuario = idUsuario;
      FFAppState().email = emailUsuario;
      FFAppState().name = nomeUsuario;
      FFAppState().CPF = cpfUsuario;
      FFAppState().telefone = telefoneUsuario;
      FFAppState().senha = '';
      FFAppState().cofirmarsenha = '';
    });

    await authManager.signIn(
      authenticationToken: token.isEmpty ? null : token,
      authUid: idUsuario.toString(),
      userData: UserStruct(name: nomeUsuario, email: emailUsuario),
    );

    debugPrint('SaborLocal cadastro: usuario Xano salvo $idUsuario.');
    return true;
  } catch (error) {
    debugPrint('SaborLocal cadastro: falha ao cadastrar usuario.');
    return false;
  }
}
