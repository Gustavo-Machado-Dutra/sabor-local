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

Map<String, dynamic>? _slLoginMap(dynamic value) {
  if (value is Map) {
    return value.map((key, value) => MapEntry(key.toString(), value));
  }
  if (value is List && value.isNotEmpty) {
    return _slLoginMap(value.first);
  }
  return null;
}

String _slLoginString(Map<String, dynamic>? data, List<String> keys) {
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

int _slLoginInt(Map<String, dynamic>? data, List<String> keys) {
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

Map<String, dynamic>? _slLoginUserFrom(Map<String, dynamic>? root) {
  if (root == null) return null;
  final data = _slLoginMap(root['data']);
  final result = _slLoginMap(root['result']);
  return _slLoginMap(root['user']) ??
      _slLoginMap(root['usuario']) ??
      _slLoginMap(root['record']) ??
      _slLoginMap(root['me']) ??
      _slLoginMap(data?['user']) ??
      _slLoginMap(data?['usuario']) ??
      _slLoginMap(data?['record']) ??
      _slLoginMap(data?['me']) ??
      data ??
      _slLoginMap(result?['user']) ??
      _slLoginMap(result?['usuario']) ??
      _slLoginMap(result?['record']) ??
      result ??
      root;
}

Map<String, dynamic> _slLoginMerge(
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

bool _slLoginHasContact(Map<String, dynamic>? user) {
  final cpf = _slLoginString(user, ['CPF', 'cpf', 'cpfCnpj', 'cpf_cnpj']);
  final telefone = _slLoginString(user, [
    'telefone',
    'phone',
    'celular',
    'whatsapp',
  ]);
  return cpf.isNotEmpty && telefone.isNotEmpty;
}

const _slLoginMensagemGenerica =
    'Usuário ou senha incorretos. Verifique suas informações e tente novamente.';

void _slLoginSetMessage(String message) {
  FFAppState().loginMensagemErro =
      message.trim().isEmpty ? _slLoginMensagemGenerica : message.trim();
}

void _slLoginClearLocalSession() {
  FFAppState().update(() {
    FFAppState().id_usuario = 0;
    FFAppState().email = '';
    FFAppState().name = '';
    FFAppState().CPF = '';
    FFAppState().telefone = '';
    FFAppState().senha = '';
    FFAppState().cofirmarsenha = '';
  });
}

Future<void> _slLoginClearSession() async {
  _slLoginClearLocalSession();
  await authManager.signOut();
}

String _slLoginTokenFrom(Map<String, dynamic>? root) {
  final keys = [
    'authToken',
    'auth_token',
    'token',
    'accessToken',
    'access_token',
    'jwt',
  ];
  final data = _slLoginMap(root?['data']);
  final auth = _slLoginMap(root?['auth']);
  final result = _slLoginMap(root?['result']);
  final session = _slLoginMap(root?['session']);
  return _slLoginString(root, keys).isNotEmpty
      ? _slLoginString(root, keys)
      : _slLoginString(data, keys).isNotEmpty
          ? _slLoginString(data, keys)
          : _slLoginString(auth, keys).isNotEmpty
              ? _slLoginString(auth, keys)
              : _slLoginString(result, keys).isNotEmpty
                  ? _slLoginString(result, keys)
                  : _slLoginString(session, keys);
}

Map<String, dynamic>? _slLoginJwtPayload(String token) {
  final parts = token.split('.');
  if (parts.length < 2) return null;
  try {
    final normalized = base64Url.normalize(parts[1]);
    final decoded = utf8.decode(base64Url.decode(normalized));
    return _slLoginMap(jsonDecode(decoded));
  } catch (_) {
    return null;
  }
}

Future<Map<String, dynamic>?> _slLoginFetchMe(String token) async {
  if (token.isEmpty) return null;
  final response = await http.get(
    Uri.parse('https://x8ki-letl-twmt.n7.xano.io/api:1PHB92OV/auth/me'),
    headers: {'Authorization': 'Bearer $token'},
  );
  debugPrint('SaborLocal login: auth/me status ${response.statusCode}.');
  if (response.statusCode < 200 || response.statusCode >= 300) {
    return null;
  }
  return _slLoginMap(jsonDecode(response.body));
}

Future<Map<String, dynamic>?> _slLoginFetchUserById(
    int userId, String token) async {
  if (userId <= 0) return null;
  final response = await http.get(
    Uri.parse('https://x8ki-letl-twmt.n7.xano.io/api:YkYaWxLt/user/$userId'),
    headers: {'Authorization': 'Bearer $token'},
  );
  debugPrint('SaborLocal login: user/$userId status ${response.statusCode}.');
  if (response.statusCode < 200 || response.statusCode >= 300) {
    return null;
  }
  return _slLoginUserFrom(_slLoginMap(jsonDecode(response.body)));
}

Future<Map<String, dynamic>?> _slLoginFetchClienteByUserId(
  int userId,
  String token,
) async {
  if (userId <= 0) return null;

  var page = 1;
  while (page <= 10) {
    final response = await http.get(
      Uri.parse(
        'https://x8ki-letl-twmt.n7.xano.io/api:YkYaWxLt/cliente?page=$page',
      ),
      headers: {'Authorization': 'Bearer $token'},
    );
    debugPrint(
      'SaborLocal login: cliente page $page status ${response.statusCode}.',
    );
    if (response.statusCode < 200 || response.statusCode >= 300) {
      return null;
    }

    final root = _slLoginMap(jsonDecode(response.body));
    final items = root?['items'];
    if (items is List) {
      for (final item in items) {
        final cliente = _slLoginMap(item);
        if (_slLoginInt(cliente, ['user_id', 'usuario_id', 'id_usuario']) ==
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

Future<bool> loginXanoSalvarUsuario(String email, String senha) async {
  final loginEmail = email.trim();
  final loginSenha = senha;

  FFAppState().loginMensagemErro = '';
  _slLoginClearLocalSession();

  if (loginEmail.isEmpty || loginSenha.isEmpty) {
    _slLoginSetMessage(_slLoginMensagemGenerica);
    return false;
  }

  try {
    final response = await http.post(
      Uri.parse('https://x8ki-letl-twmt.n7.xano.io/api:1PHB92OV/auth/login'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'email': loginEmail, 'password': loginSenha}),
    );

    debugPrint('SaborLocal login: auth/login status ${response.statusCode}.');

    final root = _slLoginMap(jsonDecode(response.body));
    final backendMessage = _slLoginString(root, ['message', 'error']);
    if (backendMessage.isNotEmpty) {
      debugPrint('SaborLocal login: backend message: $backendMessage');
    }

    if (response.statusCode < 200 || response.statusCode >= 300) {
      _slLoginSetMessage(backendMessage);
      return false;
    }

    var user = _slLoginUserFrom(root);

    final token = _slLoginTokenFrom(root);

    if (token.isEmpty) {
      debugPrint('SaborLocal login: resposta sem authToken valido.');
      _slLoginSetMessage(_slLoginMensagemGenerica);
      return false;
    }

    var idUsuario = _slLoginInt(user, [
      'id',
      'id_usuario',
      'usuario_id',
      'user_id',
      'client_id',
    ]);

    if (idUsuario <= 0 && token.isNotEmpty) {
      final meRoot = await _slLoginFetchMe(token);
      final meUser = _slLoginUserFrom(meRoot);
      final meId = _slLoginInt(meUser, [
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

    if (idUsuario <= 0 && token.isNotEmpty) {
      final tokenPayload = _slLoginJwtPayload(token);
      final tokenUser = _slLoginUserFrom(tokenPayload);
      final tokenId = _slLoginInt(tokenUser, [
        'id',
        'id_usuario',
        'usuario_id',
        'user_id',
        'client_id',
        'sub',
      ]);
      if (tokenId > 0) {
        idUsuario = tokenId;
        user = tokenUser;
      }
    }

    if (idUsuario <= 0) {
      debugPrint('SaborLocal login: resposta sem id de usuario valido.');
      _slLoginSetMessage(_slLoginMensagemGenerica);
      return false;
    }

    if (!_slLoginHasContact(user)) {
      final userById = await _slLoginFetchUserById(idUsuario, token);
      user = _slLoginMerge(userById, user);
    }

    if (!_slLoginHasContact(user)) {
      final cliente = await _slLoginFetchClienteByUserId(idUsuario, token);
      user = _slLoginMerge(cliente, user);
    }

    final nome = _slLoginString(user, ['name', 'nome', 'Name']);
    final userEmail = _slLoginString(user, ['email', 'Email']).isNotEmpty
        ? _slLoginString(user, ['email', 'Email'])
        : loginEmail;
    final cpf = _slLoginString(user, ['CPF', 'cpf', 'cpfCnpj', 'cpf_cnpj']);
    final telefone = _slLoginString(user, [
      'telefone',
      'phone',
      'celular',
      'whatsapp',
    ]);

    FFAppState().update(() {
      FFAppState().loginMensagemErro = '';
      FFAppState().authTokenXano = token;
      FFAppState().id_usuario = idUsuario;
      FFAppState().email = userEmail;
      if (nome.isNotEmpty) FFAppState().name = nome;
      if (cpf.isNotEmpty) FFAppState().CPF = cpf;
      if (telefone.isNotEmpty) FFAppState().telefone = telefone;
    });

    await authManager.signIn(
      authenticationToken: token,
      authUid: idUsuario.toString(),
      userData: UserStruct(name: nome, email: userEmail),
    );

    debugPrint('SaborLocal login: usuario Xano salvo $idUsuario.');
    return true;
  } catch (error) {
    debugPrint('SaborLocal login: falha ao autenticar: $error');
    _slLoginSetMessage(_slLoginMensagemGenerica);
    _slLoginClearLocalSession();
    return false;
  }
}
