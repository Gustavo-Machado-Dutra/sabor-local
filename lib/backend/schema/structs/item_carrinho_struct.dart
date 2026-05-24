// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItemCarrinhoStruct extends BaseStruct {
  ItemCarrinhoStruct({
    int? produtoId,
    String? nome,
    double? preco,
  })  : _produtoId = produtoId,
        _nome = nome,
        _preco = preco;

  // "produto_id" field.
  int? _produtoId;
  int get produtoId => _produtoId ?? 0;
  set produtoId(int? val) => _produtoId = val;

  void incrementProdutoId(int amount) => produtoId = produtoId + amount;

  bool hasProdutoId() => _produtoId != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  set preco(double? val) => _preco = val;

  void incrementPreco(double amount) => preco = preco + amount;

  bool hasPreco() => _preco != null;

  static ItemCarrinhoStruct fromMap(Map<String, dynamic> data) =>
      ItemCarrinhoStruct(
        produtoId: castToType<int>(data['produto_id']),
        nome: data['nome'] as String?,
        preco: castToType<double>(data['preco']),
      );

  static ItemCarrinhoStruct? maybeFromMap(dynamic data) => data is Map
      ? ItemCarrinhoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'produto_id': _produtoId,
        'nome': _nome,
        'preco': _preco,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'produto_id': serializeParam(
          _produtoId,
          ParamType.int,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'preco': serializeParam(
          _preco,
          ParamType.double,
        ),
      }.withoutNulls;

  static ItemCarrinhoStruct fromSerializableMap(Map<String, dynamic> data) =>
      ItemCarrinhoStruct(
        produtoId: deserializeParam(
          data['produto_id'],
          ParamType.int,
          false,
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        preco: deserializeParam(
          data['preco'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ItemCarrinhoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ItemCarrinhoStruct &&
        produtoId == other.produtoId &&
        nome == other.nome &&
        preco == other.preco;
  }

  @override
  int get hashCode => const ListEquality().hash([produtoId, nome, preco]);
}

ItemCarrinhoStruct createItemCarrinhoStruct({
  int? produtoId,
  String? nome,
  double? preco,
}) =>
    ItemCarrinhoStruct(
      produtoId: produtoId,
      nome: nome,
      preco: preco,
    );
