import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _carrinhodecompras = (await secureStorage
                  .getStringList('ff_carrinhodecompras'))
              ?.map((x) {
                try {
                  return TipoprodutoStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _carrinhodecompras;
    });
    await _safeInitAsync(() async {
      _carrinhoLocal = (await secureStorage.getStringList('ff_carrinhoLocal'))
              ?.map((x) {
                try {
                  return CatagolodigitalStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _carrinhoLocal;
    });
    await _safeInitAsync(() async {
      _id_usuario = await secureStorage.getInt('ff_id_usuario') ?? _id_usuario;
    });
    await _safeInitAsync(() async {
      _id_pedido_atual =
          await secureStorage.getInt('ff_id_pedido_atual') ?? _id_pedido_atual;
    });
    await _safeInitAsync(() async {
      _id_pagamento_asaas =
          await secureStorage.getString('ff_id_pagamento_asaas') ??
              _id_pagamento_asaas;
    });
    await _safeInitAsync(() async {
      _forma_pagamento = await secureStorage.getString('ff_forma_pagamento') ??
          _forma_pagamento;
    });
    await _safeInitAsync(() async {
      _status_pagamento =
          await secureStorage.getString('ff_status_pagamento') ??
              _status_pagamento;
    });
    await _safeInitAsync(() async {
      _invoiceUrl =
          await secureStorage.getString('ff_invoiceUrl') ?? _invoiceUrl;
    });
    await _safeInitAsync(() async {
      _bankSlipUrl =
          await secureStorage.getString('ff_bankSlipUrl') ?? _bankSlipUrl;
    });
    await _safeInitAsync(() async {
      _pixQrCode = await secureStorage.getString('ff_pixQrCode') ?? _pixQrCode;
    });
    await _safeInitAsync(() async {
      _pixCopyPaste =
          await secureStorage.getString('ff_pixCopyPaste') ?? _pixCopyPaste;
    });
    await _safeInitAsync(() async {
      _valor_pagamento = await secureStorage.getDouble('ff_valor_pagamento') ??
          _valor_pagamento;
    });
    await _safeInitAsync(() async {
      _vencimento_pagamento =
          await secureStorage.getString('ff_vencimento_pagamento') ??
              _vencimento_pagamento;
    });
    await _safeInitAsync(() async {
      _slcarrinhototal = await secureStorage.getDouble('ff_slcarrinhototal') ??
          _slcarrinhototal;
    });
    await _safeInitAsync(() async {
      _slProdutoSelecionadoPreco =
          await secureStorage.getDouble('ff_slProdutoSelecionadoPreco') ??
              _slProdutoSelecionadoPreco;
    });
    await _safeInitAsync(() async {
      _quantidade = await secureStorage.getInt('ff_quantidade') ?? _quantidade;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _email = '';
  String get email => _email;
  set email(String value) {
    _email = value;
  }

  String _name = '';
  String get name => _name;
  set name(String value) {
    _name = value;
  }

  String _CPF = '';
  String get CPF => _CPF;
  set CPF(String value) {
    _CPF = value;
  }

  String _telefone = '';
  String get telefone => _telefone;
  set telefone(String value) {
    _telefone = value;
  }

  String _senha = '';
  String get senha => _senha;
  set senha(String value) {
    _senha = value;
  }

  String _cofirmarsenha = '';
  String get cofirmarsenha => _cofirmarsenha;
  set cofirmarsenha(String value) {
    _cofirmarsenha = value;
  }

  List<TipoprodutoStruct> _carrinhodecompras = [];
  List<TipoprodutoStruct> get carrinhodecompras => _carrinhodecompras;
  set carrinhodecompras(List<TipoprodutoStruct> value) {
    _carrinhodecompras = value;
    secureStorage.setStringList(
        'ff_carrinhodecompras', value.map((x) => x.serialize()).toList());
  }

  void deleteCarrinhodecompras() {
    secureStorage.delete(key: 'ff_carrinhodecompras');
  }

  void addToCarrinhodecompras(TipoprodutoStruct value) {
    carrinhodecompras.add(value);
    secureStorage.setStringList('ff_carrinhodecompras',
        _carrinhodecompras.map((x) => x.serialize()).toList());
  }

  void removeFromCarrinhodecompras(TipoprodutoStruct value) {
    carrinhodecompras.remove(value);
    secureStorage.setStringList('ff_carrinhodecompras',
        _carrinhodecompras.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCarrinhodecompras(int index) {
    carrinhodecompras.removeAt(index);
    secureStorage.setStringList('ff_carrinhodecompras',
        _carrinhodecompras.map((x) => x.serialize()).toList());
  }

  void updateCarrinhodecomprasAtIndex(
    int index,
    TipoprodutoStruct Function(TipoprodutoStruct) updateFn,
  ) {
    carrinhodecompras[index] = updateFn(_carrinhodecompras[index]);
    secureStorage.setStringList('ff_carrinhodecompras',
        _carrinhodecompras.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCarrinhodecompras(int index, TipoprodutoStruct value) {
    carrinhodecompras.insert(index, value);
    secureStorage.setStringList('ff_carrinhodecompras',
        _carrinhodecompras.map((x) => x.serialize()).toList());
  }

  /// Lista persistida dos produtos adicionados ao carrinho.
  List<CatagolodigitalStruct> _carrinhoLocal = [];
  List<CatagolodigitalStruct> get carrinhoLocal => _carrinhoLocal;
  set carrinhoLocal(List<CatagolodigitalStruct> value) {
    _carrinhoLocal = value;
    secureStorage.setStringList(
        'ff_carrinhoLocal', value.map((x) => x.serialize()).toList());
  }

  void deleteCarrinhoLocal() {
    secureStorage.delete(key: 'ff_carrinhoLocal');
  }

  void addToCarrinhoLocal(CatagolodigitalStruct value) {
    carrinhoLocal.add(value);
    secureStorage.setStringList(
        'ff_carrinhoLocal', _carrinhoLocal.map((x) => x.serialize()).toList());
  }

  void removeFromCarrinhoLocal(CatagolodigitalStruct value) {
    carrinhoLocal.remove(value);
    secureStorage.setStringList(
        'ff_carrinhoLocal', _carrinhoLocal.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCarrinhoLocal(int index) {
    carrinhoLocal.removeAt(index);
    secureStorage.setStringList(
        'ff_carrinhoLocal', _carrinhoLocal.map((x) => x.serialize()).toList());
  }

  void updateCarrinhoLocalAtIndex(
    int index,
    CatagolodigitalStruct Function(CatagolodigitalStruct) updateFn,
  ) {
    carrinhoLocal[index] = updateFn(_carrinhoLocal[index]);
    secureStorage.setStringList(
        'ff_carrinhoLocal', _carrinhoLocal.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCarrinhoLocal(int index, CatagolodigitalStruct value) {
    carrinhoLocal.insert(index, value);
    secureStorage.setStringList(
        'ff_carrinhoLocal', _carrinhoLocal.map((x) => x.serialize()).toList());
  }

  /// ID do usuario usado nos endpoints de checkout do Xano.
  int _id_usuario = 0;
  int get id_usuario => _id_usuario;
  set id_usuario(int value) {
    _id_usuario = value;
    secureStorage.setInt('ff_id_usuario', value);
  }

  void deleteId_usuario() {
    secureStorage.delete(key: 'ff_id_usuario');
  }

  /// ID do pedido criado antes da cobranca Asaas.
  int _id_pedido_atual = 0;
  int get id_pedido_atual => _id_pedido_atual;
  set id_pedido_atual(int value) {
    _id_pedido_atual = value;
    secureStorage.setInt('ff_id_pedido_atual', value);
  }

  void deleteId_pedido_atual() {
    secureStorage.delete(key: 'ff_id_pedido_atual');
  }

  /// ID da cobranca criada pelo Xano no Asaas.
  String _id_pagamento_asaas = '';
  String get id_pagamento_asaas => _id_pagamento_asaas;
  set id_pagamento_asaas(String value) {
    _id_pagamento_asaas = value;
    secureStorage.setString('ff_id_pagamento_asaas', value);
  }

  void deleteId_pagamento_asaas() {
    secureStorage.delete(key: 'ff_id_pagamento_asaas');
  }

  /// Forma tecnica de pagamento: PIX, BOLETO ou CREDIT_CARD.
  String _forma_pagamento = '';
  String get forma_pagamento => _forma_pagamento;
  set forma_pagamento(String value) {
    _forma_pagamento = value;
    secureStorage.setString('ff_forma_pagamento', value);
  }

  void deleteForma_pagamento() {
    secureStorage.delete(key: 'ff_forma_pagamento');
  }

  /// Status de pagamento exibido em portugues.
  String _status_pagamento = '';
  String get status_pagamento => _status_pagamento;
  set status_pagamento(String value) {
    _status_pagamento = value;
    secureStorage.setString('ff_status_pagamento', value);
  }

  void deleteStatus_pagamento() {
    secureStorage.delete(key: 'ff_status_pagamento');
  }

  /// URL segura de pagamento retornada pelo Xano.
  String _invoiceUrl = '';
  String get invoiceUrl => _invoiceUrl;
  set invoiceUrl(String value) {
    _invoiceUrl = value;
    secureStorage.setString('ff_invoiceUrl', value);
  }

  void deleteInvoiceUrl() {
    secureStorage.delete(key: 'ff_invoiceUrl');
  }

  /// URL do boleto retornada pelo Xano.
  String _bankSlipUrl = '';
  String get bankSlipUrl => _bankSlipUrl;
  set bankSlipUrl(String value) {
    _bankSlipUrl = value;
    secureStorage.setString('ff_bankSlipUrl', value);
  }

  void deleteBankSlipUrl() {
    secureStorage.delete(key: 'ff_bankSlipUrl');
  }

  /// QR Code Pix retornado pelo Xano como URL ou data URI.
  String _pixQrCode = '';
  String get pixQrCode => _pixQrCode;
  set pixQrCode(String value) {
    _pixQrCode = value;
    secureStorage.setString('ff_pixQrCode', value);
  }

  void deletePixQrCode() {
    secureStorage.delete(key: 'ff_pixQrCode');
  }

  /// Codigo Pix copia e cola retornado pelo Xano.
  String _pixCopyPaste = '';
  String get pixCopyPaste => _pixCopyPaste;
  set pixCopyPaste(String value) {
    _pixCopyPaste = value;
    secureStorage.setString('ff_pixCopyPaste', value);
  }

  void deletePixCopyPaste() {
    secureStorage.delete(key: 'ff_pixCopyPaste');
  }

  /// Valor total do pagamento atual.
  double _valor_pagamento = 0.0;
  double get valor_pagamento => _valor_pagamento;
  set valor_pagamento(double value) {
    _valor_pagamento = value;
    secureStorage.setDouble('ff_valor_pagamento', value);
  }

  void deleteValor_pagamento() {
    secureStorage.delete(key: 'ff_valor_pagamento');
  }

  /// Data de vencimento retornada pelo Xano.
  String _vencimento_pagamento = '';
  String get vencimento_pagamento => _vencimento_pagamento;
  set vencimento_pagamento(String value) {
    _vencimento_pagamento = value;
    secureStorage.setString('ff_vencimento_pagamento', value);
  }

  void deleteVencimento_pagamento() {
    secureStorage.delete(key: 'ff_vencimento_pagamento');
  }

  double _slcarrinhototal = 0.0;
  double get slcarrinhototal => _slcarrinhototal;
  set slcarrinhototal(double value) {
    _slcarrinhototal = value;
    secureStorage.setDouble('ff_slcarrinhototal', value);
  }

  void deleteSlcarrinhototal() {
    secureStorage.delete(key: 'ff_slcarrinhototal');
  }

  double _slProdutoSelecionadoPreco = 0.0;
  double get slProdutoSelecionadoPreco => _slProdutoSelecionadoPreco;
  set slProdutoSelecionadoPreco(double value) {
    _slProdutoSelecionadoPreco = value;
    secureStorage.setDouble('ff_slProdutoSelecionadoPreco', value);
  }

  void deleteSlProdutoSelecionadoPreco() {
    secureStorage.delete(key: 'ff_slProdutoSelecionadoPreco');
  }

  int _quantidade = 1;
  int get quantidade => _quantidade;
  set quantidade(int value) {
    _quantidade = value;
    secureStorage.setInt('ff_quantidade', value);
  }

  void deleteQuantidade() {
    secureStorage.delete(key: 'ff_quantidade');
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
