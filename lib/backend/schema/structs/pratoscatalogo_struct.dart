// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PratoscatalogoStruct extends BaseStruct {
  PratoscatalogoStruct({
    int? id,
    int? createdAt,
    String? nome,
    String? descricao,
    int? produtoId,
    double? preco,
    String? imagem,
  })  : _id = id,
        _createdAt = createdAt,
        _nome = nome,
        _descricao = descricao,
        _produtoId = produtoId,
        _preco = preco,
        _imagem = imagem;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "created_at" field.
  int? _createdAt;
  int get createdAt => _createdAt ?? 0;
  set createdAt(int? val) => _createdAt = val;

  void incrementCreatedAt(int amount) => createdAt = createdAt + amount;

  bool hasCreatedAt() => _createdAt != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;

  bool hasDescricao() => _descricao != null;

  // "produto_id" field.
  int? _produtoId;
  int get produtoId => _produtoId ?? 0;
  set produtoId(int? val) => _produtoId = val;

  void incrementProdutoId(int amount) => produtoId = produtoId + amount;

  bool hasProdutoId() => _produtoId != null;

  // "preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  set preco(double? val) => _preco = val;

  void incrementPreco(double amount) => preco = preco + amount;

  bool hasPreco() => _preco != null;

  // "imagem" field.
  String? _imagem;
  String get imagem => _imagem ?? '';
  set imagem(String? val) => _imagem = val;

  bool hasImagem() => _imagem != null;

  static PratoscatalogoStruct fromMap(Map<String, dynamic> data) =>
      PratoscatalogoStruct(
        id: castToType<int>(data['id']),
        createdAt: castToType<int>(data['created_at']),
        nome: data['nome'] as String?,
        descricao: data['descricao'] as String?,
        produtoId: castToType<int>(data['produto_id']),
        preco: castToType<double>(data['preco']),
        imagem: data['imagem'] as String?,
      );

  static PratoscatalogoStruct? maybeFromMap(dynamic data) => data is Map
      ? PratoscatalogoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'nome': _nome,
        'descricao': _descricao,
        'produto_id': _produtoId,
        'preco': _preco,
        'imagem': _imagem,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.int,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
        'produto_id': serializeParam(
          _produtoId,
          ParamType.int,
        ),
        'preco': serializeParam(
          _preco,
          ParamType.double,
        ),
        'imagem': serializeParam(
          _imagem,
          ParamType.String,
        ),
      }.withoutNulls;

  static PratoscatalogoStruct fromSerializableMap(Map<String, dynamic> data) =>
      PratoscatalogoStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.int,
          false,
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        descricao: deserializeParam(
          data['descricao'],
          ParamType.String,
          false,
        ),
        produtoId: deserializeParam(
          data['produto_id'],
          ParamType.int,
          false,
        ),
        preco: deserializeParam(
          data['preco'],
          ParamType.double,
          false,
        ),
        imagem: deserializeParam(
          data['imagem'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PratoscatalogoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PratoscatalogoStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        nome == other.nome &&
        descricao == other.descricao &&
        produtoId == other.produtoId &&
        preco == other.preco &&
        imagem == other.imagem;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, createdAt, nome, descricao, produtoId, preco, imagem]);
}

PratoscatalogoStruct createPratoscatalogoStruct({
  int? id,
  int? createdAt,
  String? nome,
  String? descricao,
  int? produtoId,
  double? preco,
  String? imagem,
}) =>
    PratoscatalogoStruct(
      id: id,
      createdAt: createdAt,
      nome: nome,
      descricao: descricao,
      produtoId: produtoId,
      preco: preco,
      imagem: imagem,
    );
