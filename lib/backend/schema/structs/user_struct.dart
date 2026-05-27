// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    int? id,
    int? createdAt,
    String? name,
    String? email,
    int? papelId,
    String? otpCode,
    String? otpExpiresAt,
  })  : _id = id,
        _createdAt = createdAt,
        _name = name,
        _email = email,
        _papelId = papelId,
        _otpCode = otpCode,
        _otpExpiresAt = otpExpiresAt;

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

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "papel_id" field.
  int? _papelId;
  int get papelId => _papelId ?? 0;
  set papelId(int? val) => _papelId = val;

  void incrementPapelId(int amount) => papelId = papelId + amount;

  bool hasPapelId() => _papelId != null;

  // "otp_code" field.
  String? _otpCode;
  String get otpCode => _otpCode ?? '';
  set otpCode(String? val) => _otpCode = val;

  bool hasOtpCode() => _otpCode != null;

  // "otp_expires_at" field.
  String? _otpExpiresAt;
  String get otpExpiresAt => _otpExpiresAt ?? '';
  set otpExpiresAt(String? val) => _otpExpiresAt = val;

  bool hasOtpExpiresAt() => _otpExpiresAt != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        id: castToType<int>(data['id']),
        createdAt: castToType<int>(data['created_at']),
        name: data['name'] as String?,
        email: data['email'] as String?,
        papelId: castToType<int>(data['papel_id']),
        otpCode: data['otp_code'] as String?,
        otpExpiresAt: data['otp_expires_at'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'name': _name,
        'email': _email,
        'papel_id': _papelId,
        'otp_code': _otpCode,
        'otp_expires_at': _otpExpiresAt,
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
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'papel_id': serializeParam(
          _papelId,
          ParamType.int,
        ),
        'otp_code': serializeParam(
          _otpCode,
          ParamType.String,
        ),
        'otp_expires_at': serializeParam(
          _otpExpiresAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
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
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        papelId: deserializeParam(
          data['papel_id'],
          ParamType.int,
          false,
        ),
        otpCode: deserializeParam(
          data['otp_code'],
          ParamType.String,
          false,
        ),
        otpExpiresAt: deserializeParam(
          data['otp_expires_at'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        name == other.name &&
        email == other.email &&
        papelId == other.papelId &&
        otpCode == other.otpCode &&
        otpExpiresAt == other.otpExpiresAt;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, createdAt, name, email, papelId, otpCode, otpExpiresAt]);
}

UserStruct createUserStruct({
  int? id,
  int? createdAt,
  String? name,
  String? email,
  int? papelId,
  String? otpCode,
  String? otpExpiresAt,
}) =>
    UserStruct(
      id: id,
      createdAt: createdAt,
      name: name,
      email: email,
      papelId: papelId,
      otpCode: otpCode,
      otpExpiresAt: otpExpiresAt,
    );
