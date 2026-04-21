import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Authentication Group Code

class AuthenticationGroup {
  static String getBaseUrl() =>
      'https://x8ki-letl-twmt.n7.xano.io/api:1PHB92OV';
  static Map<String, String> headers = {};
  static LoginAndRetrieveAnAuthenticationTokenCall
      loginAndRetrieveAnAuthenticationTokenCall =
      LoginAndRetrieveAnAuthenticationTokenCall();
  static GetTheUserRecordBelongingToTheAuthenticationTokenCall
      getTheUserRecordBelongingToTheAuthenticationTokenCall =
      GetTheUserRecordBelongingToTheAuthenticationTokenCall();
  static SignupAndRetrieveAnAuthenticationTokenCall
      signupAndRetrieveAnAuthenticationTokenCall =
      SignupAndRetrieveAnAuthenticationTokenCall();
}

class LoginAndRetrieveAnAuthenticationTokenCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final baseUrl = AuthenticationGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "password": "${escapeStringForJson(password)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login and retrieve an authentication token',
      apiUrl: '${baseUrl}/auth/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.authToken''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.name''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.email''',
      ));
}

class GetTheUserRecordBelongingToTheAuthenticationTokenCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = AuthenticationGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get the user record belonging to the authentication token',
      apiUrl: '${baseUrl}/auth/me',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SignupAndRetrieveAnAuthenticationTokenCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? password = '',
    String? email = '',
    String? cpf = '',
    String? telefone = '',
  }) async {
    final baseUrl = AuthenticationGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(name)}",
  "email": "${escapeStringForJson(email)}",
  "password": "${escapeStringForJson(password)}",
  "CPF": "${escapeStringForJson(cpf)}",
  "telefone": "${escapeStringForJson(telefone)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Signup and retrieve an authentication token',
      apiUrl: '${baseUrl}/auth/signup',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.authToken''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.name''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.email''',
      ));
}

/// End Authentication Group Code

class BuscarCepCall {
  static Future<ApiCallResponse> call({
    String? cep = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'buscarCep',
      apiUrl: 'viacep.com.br/ws/${cep}/json/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? rua(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.logradouro''',
      ));
  static String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bairro''',
      ));
  static String? cidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.localidade''',
      ));
  static String? uf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uf''',
      ));
}

class CadastrarEnderecoCall {
  static Future<ApiCallResponse> call({
    int? clientId,
    String? logradouro = '',
    String? numero = '',
    String? complemento = '',
    String? bairro = '',
    String? referencia = '',
    bool? padrao = true,
  }) async {
    final ffApiRequestBody = '''
{
  "logradouro": "${escapeStringForJson(logradouro)}",
  "numero": "${escapeStringForJson(numero)}",
  "complemento": "${escapeStringForJson(complemento)}",
  "bairro": "${escapeStringForJson(bairro)}",
  "referencia": "${escapeStringForJson(referencia)}",
  "padrao": ${padrao}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CadastrarEndereco',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:YkYaWxLt/endereco',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CatalogoDigitalCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Catalogo Digital',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:YkYaWxLt/produto',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EnviarEmailCall {
  static Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email":"${escapeStringForJson(email)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'EnviarEmail',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:9E39YJFq/enviar_email',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ValidarOTPCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? codigoDigitado = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email":"${escapeStringForJson(email)}",
  "codigo_digitado": "${escapeStringForJson(codigoDigitado)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ValidarOTP',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:9E39YJFq/validar_otp',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
