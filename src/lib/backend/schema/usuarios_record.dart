import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuariosRecord extends FirestoreRecord {
  UsuariosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "cpfCnpj" field.
  String? _cpfCnpj;
  String get cpfCnpj => _cpfCnpj ?? '';
  bool hasCpfCnpj() => _cpfCnpj != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "descricao_ONG" field.
  String? _descricaoONG;
  String get descricaoONG => _descricaoONG ?? '';
  bool hasDescricaoONG() => _descricaoONG != null;

  // "latitudelong" field.
  LatLng? _latitudelong;
  LatLng? get latitudelong => _latitudelong;
  bool hasLatitudelong() => _latitudelong != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  bool hasCidade() => _cidade != null;

  // "bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  bool hasBairro() => _bairro != null;

  // "rua" field.
  String? _rua;
  String get rua => _rua ?? '';
  bool hasRua() => _rua != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  bool hasEndereco() => _endereco != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _tipo = snapshotData['tipo'] as String?;
    _cpfCnpj = snapshotData['cpfCnpj'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _uid = snapshotData['uid'] as String?;
    _descricaoONG = snapshotData['descricao_ONG'] as String?;
    _latitudelong = snapshotData['latitudelong'] as LatLng?;
    _cidade = snapshotData['cidade'] as String?;
    _bairro = snapshotData['bairro'] as String?;
    _rua = snapshotData['rua'] as String?;
    _estado = snapshotData['estado'] as String?;
    _endereco = snapshotData['endereco'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usuarios');

  static Stream<UsuariosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsuariosRecord.fromSnapshot(s));

  static Future<UsuariosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsuariosRecord.fromSnapshot(s));

  static UsuariosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsuariosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsuariosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsuariosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsuariosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsuariosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsuariosRecordData({
  String? email,
  String? tipo,
  String? cpfCnpj,
  String? displayName,
  String? photoUrl,
  DateTime? createdTime,
  String? phoneNumber,
  String? uid,
  String? descricaoONG,
  LatLng? latitudelong,
  String? cidade,
  String? bairro,
  String? rua,
  String? estado,
  String? endereco,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'tipo': tipo,
      'cpfCnpj': cpfCnpj,
      'display_name': displayName,
      'photo_url': photoUrl,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'uid': uid,
      'descricao_ONG': descricaoONG,
      'latitudelong': latitudelong,
      'cidade': cidade,
      'bairro': bairro,
      'rua': rua,
      'estado': estado,
      'endereco': endereco,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsuariosRecordDocumentEquality implements Equality<UsuariosRecord> {
  const UsuariosRecordDocumentEquality();

  @override
  bool equals(UsuariosRecord? e1, UsuariosRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.tipo == e2?.tipo &&
        e1?.cpfCnpj == e2?.cpfCnpj &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.uid == e2?.uid &&
        e1?.descricaoONG == e2?.descricaoONG &&
        e1?.latitudelong == e2?.latitudelong &&
        e1?.cidade == e2?.cidade &&
        e1?.bairro == e2?.bairro &&
        e1?.rua == e2?.rua &&
        e1?.estado == e2?.estado &&
        e1?.endereco == e2?.endereco;
  }

  @override
  int hash(UsuariosRecord? e) => const ListEquality().hash([
        e?.email,
        e?.tipo,
        e?.cpfCnpj,
        e?.displayName,
        e?.photoUrl,
        e?.createdTime,
        e?.phoneNumber,
        e?.uid,
        e?.descricaoONG,
        e?.latitudelong,
        e?.cidade,
        e?.bairro,
        e?.rua,
        e?.estado,
        e?.endereco
      ]);

  @override
  bool isValidKey(Object? o) => o is UsuariosRecord;
}
