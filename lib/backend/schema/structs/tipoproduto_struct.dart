// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TipoprodutoStruct extends BaseStruct {
  TipoprodutoStruct({
    int? idproduto,
    String? nomeproduto,
    String? descricaoproduto,
    int? quantidadeproduto,
    int? qntselecionnadaproduto,
    String? urlimagemproduto,
    double? precodoproduto,
    bool? precisaproduzirproduto,
  })  : _idproduto = idproduto,
        _nomeproduto = nomeproduto,
        _descricaoproduto = descricaoproduto,
        _quantidadeproduto = quantidadeproduto,
        _qntselecionnadaproduto = qntselecionnadaproduto,
        _urlimagemproduto = urlimagemproduto,
        _precodoproduto = precodoproduto,
        _precisaproduzirproduto = precisaproduzirproduto;

  // "Idproduto" field.
  int? _idproduto;
  int get idproduto => _idproduto ?? 0;
  set idproduto(int? val) => _idproduto = val;

  void incrementIdproduto(int amount) => idproduto = idproduto + amount;

  bool hasIdproduto() => _idproduto != null;

  // "nomeproduto" field.
  String? _nomeproduto;
  String get nomeproduto => _nomeproduto ?? '';
  set nomeproduto(String? val) => _nomeproduto = val;

  bool hasNomeproduto() => _nomeproduto != null;

  // "descricaoproduto" field.
  String? _descricaoproduto;
  String get descricaoproduto => _descricaoproduto ?? '';
  set descricaoproduto(String? val) => _descricaoproduto = val;

  bool hasDescricaoproduto() => _descricaoproduto != null;

  // "quantidadeproduto" field.
  int? _quantidadeproduto;
  int get quantidadeproduto => _quantidadeproduto ?? 0;
  set quantidadeproduto(int? val) => _quantidadeproduto = val;

  void incrementQuantidadeproduto(int amount) =>
      quantidadeproduto = quantidadeproduto + amount;

  bool hasQuantidadeproduto() => _quantidadeproduto != null;

  // "qntselecionnadaproduto" field.
  int? _qntselecionnadaproduto;
  int get qntselecionnadaproduto => _qntselecionnadaproduto ?? 0;
  set qntselecionnadaproduto(int? val) => _qntselecionnadaproduto = val;

  void incrementQntselecionnadaproduto(int amount) =>
      qntselecionnadaproduto = qntselecionnadaproduto + amount;

  bool hasQntselecionnadaproduto() => _qntselecionnadaproduto != null;

  // "urlimagemproduto" field.
  String? _urlimagemproduto;
  String get urlimagemproduto => _urlimagemproduto ?? '';
  set urlimagemproduto(String? val) => _urlimagemproduto = val;

  bool hasUrlimagemproduto() => _urlimagemproduto != null;

  // "precodoproduto" field.
  double? _precodoproduto;
  double get precodoproduto => _precodoproduto ?? 0.0;
  set precodoproduto(double? val) => _precodoproduto = val;

  void incrementPrecodoproduto(double amount) =>
      precodoproduto = precodoproduto + amount;

  bool hasPrecodoproduto() => _precodoproduto != null;

  // "precisaproduzirproduto" field.
  bool? _precisaproduzirproduto;
  bool get precisaproduzirproduto => _precisaproduzirproduto ?? false;
  set precisaproduzirproduto(bool? val) => _precisaproduzirproduto = val;

  bool hasPrecisaproduzirproduto() => _precisaproduzirproduto != null;

  static TipoprodutoStruct fromMap(Map<String, dynamic> data) =>
      TipoprodutoStruct(
        idproduto: castToType<int>(data['Idproduto']),
        nomeproduto: data['nomeproduto'] as String?,
        descricaoproduto: data['descricaoproduto'] as String?,
        quantidadeproduto: castToType<int>(data['quantidadeproduto']),
        qntselecionnadaproduto: castToType<int>(data['qntselecionnadaproduto']),
        urlimagemproduto: data['urlimagemproduto'] as String?,
        precodoproduto: castToType<double>(data['precodoproduto']),
        precisaproduzirproduto: data['precisaproduzirproduto'] as bool?,
      );

  static TipoprodutoStruct? maybeFromMap(dynamic data) => data is Map
      ? TipoprodutoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Idproduto': _idproduto,
        'nomeproduto': _nomeproduto,
        'descricaoproduto': _descricaoproduto,
        'quantidadeproduto': _quantidadeproduto,
        'qntselecionnadaproduto': _qntselecionnadaproduto,
        'urlimagemproduto': _urlimagemproduto,
        'precodoproduto': _precodoproduto,
        'precisaproduzirproduto': _precisaproduzirproduto,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Idproduto': serializeParam(
          _idproduto,
          ParamType.int,
        ),
        'nomeproduto': serializeParam(
          _nomeproduto,
          ParamType.String,
        ),
        'descricaoproduto': serializeParam(
          _descricaoproduto,
          ParamType.String,
        ),
        'quantidadeproduto': serializeParam(
          _quantidadeproduto,
          ParamType.int,
        ),
        'qntselecionnadaproduto': serializeParam(
          _qntselecionnadaproduto,
          ParamType.int,
        ),
        'urlimagemproduto': serializeParam(
          _urlimagemproduto,
          ParamType.String,
        ),
        'precodoproduto': serializeParam(
          _precodoproduto,
          ParamType.double,
        ),
        'precisaproduzirproduto': serializeParam(
          _precisaproduzirproduto,
          ParamType.bool,
        ),
      }.withoutNulls;

  static TipoprodutoStruct fromSerializableMap(Map<String, dynamic> data) =>
      TipoprodutoStruct(
        idproduto: deserializeParam(
          data['Idproduto'],
          ParamType.int,
          false,
        ),
        nomeproduto: deserializeParam(
          data['nomeproduto'],
          ParamType.String,
          false,
        ),
        descricaoproduto: deserializeParam(
          data['descricaoproduto'],
          ParamType.String,
          false,
        ),
        quantidadeproduto: deserializeParam(
          data['quantidadeproduto'],
          ParamType.int,
          false,
        ),
        qntselecionnadaproduto: deserializeParam(
          data['qntselecionnadaproduto'],
          ParamType.int,
          false,
        ),
        urlimagemproduto: deserializeParam(
          data['urlimagemproduto'],
          ParamType.String,
          false,
        ),
        precodoproduto: deserializeParam(
          data['precodoproduto'],
          ParamType.double,
          false,
        ),
        precisaproduzirproduto: deserializeParam(
          data['precisaproduzirproduto'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'TipoprodutoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TipoprodutoStruct &&
        idproduto == other.idproduto &&
        nomeproduto == other.nomeproduto &&
        descricaoproduto == other.descricaoproduto &&
        quantidadeproduto == other.quantidadeproduto &&
        qntselecionnadaproduto == other.qntselecionnadaproduto &&
        urlimagemproduto == other.urlimagemproduto &&
        precodoproduto == other.precodoproduto &&
        precisaproduzirproduto == other.precisaproduzirproduto;
  }

  @override
  int get hashCode => const ListEquality().hash([
        idproduto,
        nomeproduto,
        descricaoproduto,
        quantidadeproduto,
        qntselecionnadaproduto,
        urlimagemproduto,
        precodoproduto,
        precisaproduzirproduto
      ]);
}

TipoprodutoStruct createTipoprodutoStruct({
  int? idproduto,
  String? nomeproduto,
  String? descricaoproduto,
  int? quantidadeproduto,
  int? qntselecionnadaproduto,
  String? urlimagemproduto,
  double? precodoproduto,
  bool? precisaproduzirproduto,
}) =>
    TipoprodutoStruct(
      idproduto: idproduto,
      nomeproduto: nomeproduto,
      descricaoproduto: descricaoproduto,
      quantidadeproduto: quantidadeproduto,
      qntselecionnadaproduto: qntselecionnadaproduto,
      urlimagemproduto: urlimagemproduto,
      precodoproduto: precodoproduto,
      precisaproduzirproduto: precisaproduzirproduto,
    );
