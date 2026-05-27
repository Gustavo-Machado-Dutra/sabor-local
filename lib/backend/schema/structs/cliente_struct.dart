// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClienteStruct extends BaseStruct {
  ClienteStruct({
    int? id,
    int? createdAt,
    String? name,
    String? celular,
    String? cpf,
    int? statusClienteId,
    int? userId,
  })  : _id = id,
        _createdAt = createdAt,
        _name = name,
        _celular = celular,
        _cpf = cpf,
        _statusClienteId = statusClienteId,
        _userId = userId;

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

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "celular" field.
  String? _celular;
  String get celular => _celular ?? '';
  set celular(String? val) => _celular = val;

  bool hasCelular() => _celular != null;

  // "cpf" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  set cpf(String? val) => _cpf = val;

  bool hasCpf() => _cpf != null;

  // "status_cliente_id" field.
  int? _statusClienteId;
  int get statusClienteId => _statusClienteId ?? 0;
  set statusClienteId(int? val) => _statusClienteId = val;

  void incrementStatusClienteId(int amount) =>
      statusClienteId = statusClienteId + amount;

  bool hasStatusClienteId() => _statusClienteId != null;

  // "user_id" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;

  void incrementUserId(int amount) => userId = userId + amount;

  bool hasUserId() => _userId != null;

  static ClienteStruct fromMap(Map<String, dynamic> data) => ClienteStruct(
        id: castToType<int>(data['id']),
        createdAt: castToType<int>(data['created_at']),
        name: data['name'] as String?,
        celular: data['celular'] as String?,
        cpf: data['cpf'] as String?,
        statusClienteId: castToType<int>(data['status_cliente_id']),
        userId: castToType<int>(data['user_id']),
      );

  static ClienteStruct? maybeFromMap(dynamic data) =>
      data is Map ? ClienteStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'name': _name,
        'celular': _celular,
        'cpf': _cpf,
        'status_cliente_id': _statusClienteId,
        'user_id': _userId,
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
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'celular': serializeParam(
          _celular,
          ParamType.String,
        ),
        'cpf': serializeParam(
          _cpf,
          ParamType.String,
        ),
        'status_cliente_id': serializeParam(
          _statusClienteId,
          ParamType.int,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.int,
        ),
      }.withoutNulls;

  static ClienteStruct fromSerializableMap(Map<String, dynamic> data) =>
      ClienteStruct(
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
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        celular: deserializeParam(
          data['celular'],
          ParamType.String,
          false,
        ),
        cpf: deserializeParam(
          data['cpf'],
          ParamType.String,
          false,
        ),
        statusClienteId: deserializeParam(
          data['status_cliente_id'],
          ParamType.int,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ClienteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ClienteStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        name == other.name &&
        celular == other.celular &&
        cpf == other.cpf &&
        statusClienteId == other.statusClienteId &&
        userId == other.userId;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, createdAt, name, celular, cpf, statusClienteId, userId]);
}

ClienteStruct createClienteStruct({
  int? id,
  int? createdAt,
  String? name,
  String? celular,
  String? cpf,
  int? statusClienteId,
  int? userId,
}) =>
    ClienteStruct(
      id: id,
      createdAt: createdAt,
      name: name,
      celular: celular,
      cpf: cpf,
      statusClienteId: statusClienteId,
      userId: userId,
    );
