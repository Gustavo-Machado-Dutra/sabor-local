// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CadastraclienteeStruct extends BaseStruct {
  CadastraclienteeStruct({
    UserStruct? user,
    ClienteStruct? cliente,
    String? authToken,
  })  : _user = user,
        _cliente = cliente,
        _authToken = authToken;

  // "user" field.
  UserStruct? _user;
  UserStruct get user => _user ?? UserStruct();
  set user(UserStruct? val) => _user = val;

  void updateUser(Function(UserStruct) updateFn) {
    updateFn(_user ??= UserStruct());
  }

  bool hasUser() => _user != null;

  // "cliente" field.
  ClienteStruct? _cliente;
  ClienteStruct get cliente => _cliente ?? ClienteStruct();
  set cliente(ClienteStruct? val) => _cliente = val;

  void updateCliente(Function(ClienteStruct) updateFn) {
    updateFn(_cliente ??= ClienteStruct());
  }

  bool hasCliente() => _cliente != null;

  // "authToken" field.
  String? _authToken;
  String get authToken => _authToken ?? '';
  set authToken(String? val) => _authToken = val;

  bool hasAuthToken() => _authToken != null;

  static CadastraclienteeStruct fromMap(Map<String, dynamic> data) =>
      CadastraclienteeStruct(
        user: data['user'] is UserStruct
            ? data['user']
            : UserStruct.maybeFromMap(data['user']),
        cliente: data['cliente'] is ClienteStruct
            ? data['cliente']
            : ClienteStruct.maybeFromMap(data['cliente']),
        authToken: data['authToken'] as String?,
      );

  static CadastraclienteeStruct? maybeFromMap(dynamic data) => data is Map
      ? CadastraclienteeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'user': _user?.toMap(),
        'cliente': _cliente?.toMap(),
        'authToken': _authToken,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'user': serializeParam(
          _user,
          ParamType.DataStruct,
        ),
        'cliente': serializeParam(
          _cliente,
          ParamType.DataStruct,
        ),
        'authToken': serializeParam(
          _authToken,
          ParamType.String,
        ),
      }.withoutNulls;

  static CadastraclienteeStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CadastraclienteeStruct(
        user: deserializeStructParam(
          data['user'],
          ParamType.DataStruct,
          false,
          structBuilder: UserStruct.fromSerializableMap,
        ),
        cliente: deserializeStructParam(
          data['cliente'],
          ParamType.DataStruct,
          false,
          structBuilder: ClienteStruct.fromSerializableMap,
        ),
        authToken: deserializeParam(
          data['authToken'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CadastraclienteeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CadastraclienteeStruct &&
        user == other.user &&
        cliente == other.cliente &&
        authToken == other.authToken;
  }

  @override
  int get hashCode => const ListEquality().hash([user, cliente, authToken]);
}

CadastraclienteeStruct createCadastraclienteeStruct({
  UserStruct? user,
  ClienteStruct? cliente,
  String? authToken,
}) =>
    CadastraclienteeStruct(
      user: user ?? UserStruct(),
      cliente: cliente ?? ClienteStruct(),
      authToken: authToken,
    );
