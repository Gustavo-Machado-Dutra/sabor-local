// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CatagolodigitalStruct extends BaseStruct {
  CatagolodigitalStruct({
    int? id,
    int? createdAt,
    String? nome,
    String? descricao,
    String? rs,
    double? preco,
    String? categoria,
    int? qtdDisp,
    bool? precisaProduzir,
    bool? disponivel,
    String? imagem,
    int? quantidade,
  })  : _id = id,
        _createdAt = createdAt,
        _nome = nome,
        _descricao = descricao,
        _rs = rs,
        _preco = preco,
        _categoria = categoria,
        _qtdDisp = qtdDisp,
        _precisaProduzir = precisaProduzir,
        _disponivel = disponivel,
        _imagem = imagem,
        _quantidade = quantidade;

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

  // "rs" field.
  String? _rs;
  String get rs => _rs ?? '';
  set rs(String? val) => _rs = val;

  bool hasRs() => _rs != null;

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

  // "qtd_disp" field.
  int? _qtdDisp;
  int get qtdDisp => _qtdDisp ?? 0;
  set qtdDisp(int? val) => _qtdDisp = val;

  void incrementQtdDisp(int amount) => qtdDisp = qtdDisp + amount;

  bool hasQtdDisp() => _qtdDisp != null;

  // "precisa_produzir" field.
  bool? _precisaProduzir;
  bool get precisaProduzir => _precisaProduzir ?? false;
  set precisaProduzir(bool? val) => _precisaProduzir = val;

  bool hasPrecisaProduzir() => _precisaProduzir != null;

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

  // "quantidade" field.
  int? _quantidade;
  int get quantidade => _quantidade ?? 1;
  set quantidade(int? val) => _quantidade = val;

  void incrementQuantidade(int amount) => quantidade = quantidade + amount;

  bool hasQuantidade() => _quantidade != null;

  static CatagolodigitalStruct fromMap(Map<String, dynamic> data) =>
      CatagolodigitalStruct(
        id: castToType<int>(data['id']),
        createdAt: castToType<int>(data['created_at']),
        nome: data['nome'] as String?,
        descricao: data['descricao'] as String?,
        rs: data['rs'] as String?,
        preco: castToType<double>(data['preco']),
        categoria: data['categoria'] as String?,
        qtdDisp: castToType<int>(data['qtd_disp']),
        precisaProduzir: data['precisa_produzir'] as bool?,
        disponivel: data['disponivel'] as bool?,
        imagem: data['imagem'] as String?,
        quantidade: castToType<int>(data['quantidade']),
      );

  static CatagolodigitalStruct? maybeFromMap(dynamic data) => data is Map
      ? CatagolodigitalStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'nome': _nome,
        'descricao': _descricao,
        'rs': _rs,
        'preco': _preco,
        'categoria': _categoria,
        'qtd_disp': _qtdDisp,
        'precisa_produzir': _precisaProduzir,
        'disponivel': _disponivel,
        'imagem': _imagem,
        'quantidade': _quantidade,
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
        'rs': serializeParam(
          _rs,
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
        'qtd_disp': serializeParam(
          _qtdDisp,
          ParamType.int,
        ),
        'precisa_produzir': serializeParam(
          _precisaProduzir,
          ParamType.bool,
        ),
        'disponivel': serializeParam(
          _disponivel,
          ParamType.bool,
        ),
        'imagem': serializeParam(
          _imagem,
          ParamType.String,
        ),
        'quantidade': serializeParam(
          _quantidade,
          ParamType.int,
        ),
      }.withoutNulls;

  static CatagolodigitalStruct fromSerializableMap(Map<String, dynamic> data) =>
      CatagolodigitalStruct(
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
        rs: deserializeParam(
          data['rs'],
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
        qtdDisp: deserializeParam(
          data['qtd_disp'],
          ParamType.int,
          false,
        ),
        precisaProduzir: deserializeParam(
          data['precisa_produzir'],
          ParamType.bool,
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
        quantidade: deserializeParam(
          data['quantidade'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CatagolodigitalStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CatagolodigitalStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        nome == other.nome &&
        descricao == other.descricao &&
        rs == other.rs &&
        preco == other.preco &&
        categoria == other.categoria &&
        qtdDisp == other.qtdDisp &&
        precisaProduzir == other.precisaProduzir &&
        disponivel == other.disponivel &&
        imagem == other.imagem &&
        quantidade == other.quantidade;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        nome,
        descricao,
        rs,
        preco,
        categoria,
        qtdDisp,
        precisaProduzir,
        disponivel,
        imagem,
        quantidade
      ]);
}

CatagolodigitalStruct createCatagolodigitalStruct({
  int? id,
  int? createdAt,
  String? nome,
  String? descricao,
  String? rs,
  double? preco,
  String? categoria,
  int? qtdDisp,
  bool? precisaProduzir,
  bool? disponivel,
  String? imagem,
  int? quantidade,
}) =>
    CatagolodigitalStruct(
      id: id,
      createdAt: createdAt,
      nome: nome,
      descricao: descricao,
      rs: rs,
      preco: preco,
      categoria: categoria,
      qtdDisp: qtdDisp,
      precisaProduzir: precisaProduzir,
      disponivel: disponivel,
      imagem: imagem,
      quantidade: quantidade,
    );
