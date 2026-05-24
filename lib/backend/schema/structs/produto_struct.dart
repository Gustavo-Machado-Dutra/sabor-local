// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProdutoStruct extends BaseStruct {
  ProdutoStruct({
    int? id,
    String? nome,
    String? descricao,
    double? preco,
    String? categoria,
    bool? disponivel,
    String? imagem,
  })  : _id = id,
        _nome = nome,
        _descricao = descricao,
        _preco = preco,
        _categoria = categoria,
        _disponivel = disponivel,
        _imagem = imagem;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

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

  // "preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  set preco(double? val) => _preco = val;

  void incrementPreco(double amount) => preco = preco + amount;

  bool hasPreco() => _preco != null;

  // "categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  set categoria(String? val) => _categoria = val;

  bool hasCategoria() => _categoria != null;

  // "disponivel" field.
  bool? _disponivel;
  bool get disponivel => _disponivel ?? false;
  set disponivel(bool? val) => _disponivel = val;

  bool hasDisponivel() => _disponivel != null;

  // "imagem" field.
  String? _imagem;
  String get imagem => _imagem ?? '';
  set imagem(String? val) => _imagem = val;

  bool hasImagem() => _imagem != null;

  static ProdutoStruct fromMap(Map<String, dynamic> data) => ProdutoStruct(
        id: castToType<int>(data['id']),
        nome: data['nome'] as String?,
        descricao: data['descricao'] as String?,
        preco: castToType<double>(data['preco']),
        categoria: data['categoria'] as String?,
        disponivel: data['disponivel'] as bool?,
        imagem: data['imagem'] as String?,
      );

  static ProdutoStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProdutoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'nome': _nome,
        'descricao': _descricao,
        'preco': _preco,
        'categoria': _categoria,
        'disponivel': _disponivel,
        'imagem': _imagem,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
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
        'preco': serializeParam(
          _preco,
          ParamType.double,
        ),
        'categoria': serializeParam(
          _categoria,
          ParamType.String,
        ),
        'disponivel': serializeParam(
          _disponivel,
          ParamType.bool,
        ),
        'imagem': serializeParam(
          _imagem,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProdutoStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProdutoStruct(
        id: deserializeParam(
          data['id'],
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
        preco: deserializeParam(
          data['preco'],
          ParamType.double,
          false,
        ),
        categoria: deserializeParam(
          data['categoria'],
          ParamType.String,
          false,
        ),
        disponivel: deserializeParam(
          data['disponivel'],
          ParamType.bool,
          false,
        ),
        imagem: deserializeParam(
          data['imagem'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProdutoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProdutoStruct &&
        id == other.id &&
        nome == other.nome &&
        descricao == other.descricao &&
        preco == other.preco &&
        categoria == other.categoria &&
        disponivel == other.disponivel &&
        imagem == other.imagem;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, nome, descricao, preco, categoria, disponivel, imagem]);
}

ProdutoStruct createProdutoStruct({
  int? id,
  String? nome,
  String? descricao,
  double? preco,
  String? categoria,
  bool? disponivel,
  String? imagem,
}) =>
    ProdutoStruct(
      id: id,
      nome: nome,
      descricao: descricao,
      preco: preco,
      categoria: categoria,
      disponivel: disponivel,
      imagem: imagem,
    );
