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
import 'package:http/http.dart' as http;
import '/backend/schema/structs/index.dart';

Future<List<CatagolodigitalStruct>> buscarCatalogoCarrinhoSeguro() async {
  final uri =
      Uri.parse('https://x8ki-letl-twmt.n7.xano.io/api:YkYaWxLt/produto');
  final response = await http.get(uri);

  if (response.statusCode < 200 || response.statusCode >= 300) {
    return <CatagolodigitalStruct>[];
  }

  final dynamic dados = jsonDecode(response.body);

  if (dados is List) {
    return dados
        .map((item) => CatagolodigitalStruct.maybeFromMap(item))
        .whereType<CatagolodigitalStruct>()
        .toList();
  }

  if (dados is Map) {
    final possiveisListas = [
      dados['items'],
      dados['data'],
      dados['produto'],
      dados['produtos'],
    ];

    for (final lista in possiveisListas) {
      if (lista is List) {
        return lista
            .map((item) => CatagolodigitalStruct.maybeFromMap(item))
            .whereType<CatagolodigitalStruct>()
            .toList();
      }
    }

    final item = CatagolodigitalStruct.maybeFromMap(dados);
    return item == null
        ? <CatagolodigitalStruct>[]
        : <CatagolodigitalStruct>[item];
  }

  return <CatagolodigitalStruct>[];
}
