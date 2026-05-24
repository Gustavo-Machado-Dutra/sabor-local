// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Resposta do Xano ao criar uma cobranca Asaas.
class PagamentoAsaasResponseStruct extends BaseStruct {
  PagamentoAsaasResponseStruct({
    /// PagamentoAsaasResponse.success
    bool? success,

    /// PagamentoAsaasResponse.id_pagamento_asaas
    String? idPagamentoAsaas,

    /// PagamentoAsaasResponse.status
    String? status,

    /// PagamentoAsaasResponse.invoiceUrl
    String? invoiceUrl,

    /// PagamentoAsaasResponse.bankSlipUrl
    String? bankSlipUrl,

    /// PagamentoAsaasResponse.pixQrCode
    String? pixQrCode,

    /// PagamentoAsaasResponse.pixCopyPaste
    String? pixCopyPaste,

    /// PagamentoAsaasResponse.valor
    double? valor,

    /// PagamentoAsaasResponse.vencimento
    String? vencimento,
  })  : _success = success,
        _idPagamentoAsaas = idPagamentoAsaas,
        _status = status,
        _invoiceUrl = invoiceUrl,
        _bankSlipUrl = bankSlipUrl,
        _pixQrCode = pixQrCode,
        _pixCopyPaste = pixCopyPaste,
        _valor = valor,
        _vencimento = vencimento;

  // "success" field.
  bool? _success;
  bool get success => _success ?? false;
  set success(bool? val) => _success = val;

  bool hasSuccess() => _success != null;

  // "id_pagamento_asaas" field.
  String? _idPagamentoAsaas;
  String get idPagamentoAsaas => _idPagamentoAsaas ?? '';
  set idPagamentoAsaas(String? val) => _idPagamentoAsaas = val;

  bool hasIdPagamentoAsaas() => _idPagamentoAsaas != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "invoiceUrl" field.
  String? _invoiceUrl;
  String get invoiceUrl => _invoiceUrl ?? '';
  set invoiceUrl(String? val) => _invoiceUrl = val;

  bool hasInvoiceUrl() => _invoiceUrl != null;

  // "bankSlipUrl" field.
  String? _bankSlipUrl;
  String get bankSlipUrl => _bankSlipUrl ?? '';
  set bankSlipUrl(String? val) => _bankSlipUrl = val;

  bool hasBankSlipUrl() => _bankSlipUrl != null;

  // "pixQrCode" field.
  String? _pixQrCode;
  String get pixQrCode => _pixQrCode ?? '';
  set pixQrCode(String? val) => _pixQrCode = val;

  bool hasPixQrCode() => _pixQrCode != null;

  // "pixCopyPaste" field.
  String? _pixCopyPaste;
  String get pixCopyPaste => _pixCopyPaste ?? '';
  set pixCopyPaste(String? val) => _pixCopyPaste = val;

  bool hasPixCopyPaste() => _pixCopyPaste != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  set valor(double? val) => _valor = val;

  void incrementValor(double amount) => valor = valor + amount;

  bool hasValor() => _valor != null;

  // "vencimento" field.
  String? _vencimento;
  String get vencimento => _vencimento ?? '';
  set vencimento(String? val) => _vencimento = val;

  bool hasVencimento() => _vencimento != null;

  static PagamentoAsaasResponseStruct fromMap(Map<String, dynamic> data) =>
      PagamentoAsaasResponseStruct(
        success: data['success'] as bool?,
        idPagamentoAsaas: data['id_pagamento_asaas'] as String?,
        status: data['status'] as String?,
        invoiceUrl: data['invoiceUrl'] as String?,
        bankSlipUrl: data['bankSlipUrl'] as String?,
        pixQrCode: data['pixQrCode'] as String?,
        pixCopyPaste: data['pixCopyPaste'] as String?,
        valor: castToType<double>(data['valor']),
        vencimento: data['vencimento'] as String?,
      );

  static PagamentoAsaasResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? PagamentoAsaasResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'success': _success,
        'id_pagamento_asaas': _idPagamentoAsaas,
        'status': _status,
        'invoiceUrl': _invoiceUrl,
        'bankSlipUrl': _bankSlipUrl,
        'pixQrCode': _pixQrCode,
        'pixCopyPaste': _pixCopyPaste,
        'valor': _valor,
        'vencimento': _vencimento,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'success': serializeParam(
          _success,
          ParamType.bool,
        ),
        'id_pagamento_asaas': serializeParam(
          _idPagamentoAsaas,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'invoiceUrl': serializeParam(
          _invoiceUrl,
          ParamType.String,
        ),
        'bankSlipUrl': serializeParam(
          _bankSlipUrl,
          ParamType.String,
        ),
        'pixQrCode': serializeParam(
          _pixQrCode,
          ParamType.String,
        ),
        'pixCopyPaste': serializeParam(
          _pixCopyPaste,
          ParamType.String,
        ),
        'valor': serializeParam(
          _valor,
          ParamType.double,
        ),
        'vencimento': serializeParam(
          _vencimento,
          ParamType.String,
        ),
      }.withoutNulls;

  static PagamentoAsaasResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PagamentoAsaasResponseStruct(
        success: deserializeParam(
          data['success'],
          ParamType.bool,
          false,
        ),
        idPagamentoAsaas: deserializeParam(
          data['id_pagamento_asaas'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        invoiceUrl: deserializeParam(
          data['invoiceUrl'],
          ParamType.String,
          false,
        ),
        bankSlipUrl: deserializeParam(
          data['bankSlipUrl'],
          ParamType.String,
          false,
        ),
        pixQrCode: deserializeParam(
          data['pixQrCode'],
          ParamType.String,
          false,
        ),
        pixCopyPaste: deserializeParam(
          data['pixCopyPaste'],
          ParamType.String,
          false,
        ),
        valor: deserializeParam(
          data['valor'],
          ParamType.double,
          false,
        ),
        vencimento: deserializeParam(
          data['vencimento'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PagamentoAsaasResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PagamentoAsaasResponseStruct &&
        success == other.success &&
        idPagamentoAsaas == other.idPagamentoAsaas &&
        status == other.status &&
        invoiceUrl == other.invoiceUrl &&
        bankSlipUrl == other.bankSlipUrl &&
        pixQrCode == other.pixQrCode &&
        pixCopyPaste == other.pixCopyPaste &&
        valor == other.valor &&
        vencimento == other.vencimento;
  }

  @override
  int get hashCode => const ListEquality().hash([
        success,
        idPagamentoAsaas,
        status,
        invoiceUrl,
        bankSlipUrl,
        pixQrCode,
        pixCopyPaste,
        valor,
        vencimento
      ]);
}

PagamentoAsaasResponseStruct createPagamentoAsaasResponseStruct({
  bool? success,
  String? idPagamentoAsaas,
  String? status,
  String? invoiceUrl,
  String? bankSlipUrl,
  String? pixQrCode,
  String? pixCopyPaste,
  double? valor,
  String? vencimento,
}) =>
    PagamentoAsaasResponseStruct(
      success: success,
      idPagamentoAsaas: idPagamentoAsaas,
      status: status,
      invoiceUrl: invoiceUrl,
      bankSlipUrl: bankSlipUrl,
      pixQrCode: pixQrCode,
      pixCopyPaste: pixCopyPaste,
      valor: valor,
      vencimento: vencimento,
    );
