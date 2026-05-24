// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Resposta do Xano ao consultar o status do pagamento.
class PagamentoStatusResponseStruct extends BaseStruct {
  PagamentoStatusResponseStruct({
    /// PagamentoStatusResponse.status
    String? status,

    /// PagamentoStatusResponse.status_traduzido
    String? statusTraduzido,

    /// PagamentoStatusResponse.pago
    bool? pago,
  })  : _status = status,
        _statusTraduzido = statusTraduzido,
        _pago = pago;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "status_traduzido" field.
  String? _statusTraduzido;
  String get statusTraduzido => _statusTraduzido ?? '';
  set statusTraduzido(String? val) => _statusTraduzido = val;

  bool hasStatusTraduzido() => _statusTraduzido != null;

  // "pago" field.
  bool? _pago;
  bool get pago => _pago ?? false;
  set pago(bool? val) => _pago = val;

  bool hasPago() => _pago != null;

  static PagamentoStatusResponseStruct fromMap(Map<String, dynamic> data) =>
      PagamentoStatusResponseStruct(
        status: data['status'] as String?,
        statusTraduzido: data['status_traduzido'] as String?,
        pago: data['pago'] as bool?,
      );

  static PagamentoStatusResponseStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? PagamentoStatusResponseStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'status': _status,
        'status_traduzido': _statusTraduzido,
        'pago': _pago,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'status_traduzido': serializeParam(
          _statusTraduzido,
          ParamType.String,
        ),
        'pago': serializeParam(
          _pago,
          ParamType.bool,
        ),
      }.withoutNulls;

  static PagamentoStatusResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PagamentoStatusResponseStruct(
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        statusTraduzido: deserializeParam(
          data['status_traduzido'],
          ParamType.String,
          false,
        ),
        pago: deserializeParam(
          data['pago'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'PagamentoStatusResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PagamentoStatusResponseStruct &&
        status == other.status &&
        statusTraduzido == other.statusTraduzido &&
        pago == other.pago;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([status, statusTraduzido, pago]);
}

PagamentoStatusResponseStruct createPagamentoStatusResponseStruct({
  String? status,
  String? statusTraduzido,
  bool? pago,
}) =>
    PagamentoStatusResponseStruct(
      status: status,
      statusTraduzido: statusTraduzido,
      pago: pago,
    );
