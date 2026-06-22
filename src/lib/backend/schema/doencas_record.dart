import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DoencasRecord extends FirestoreRecord {
  DoencasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "dataDiagnostico" field.
  DateTime? _dataDiagnostico;
  DateTime? get dataDiagnostico => _dataDiagnostico;
  bool hasDataDiagnostico() => _dataDiagnostico != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _dataDiagnostico = snapshotData['dataDiagnostico'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('doencas')
          : FirebaseFirestore.instance.collectionGroup('doencas');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('doencas').doc(id);

  static Stream<DoencasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DoencasRecord.fromSnapshot(s));

  static Future<DoencasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DoencasRecord.fromSnapshot(s));

  static DoencasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DoencasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DoencasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DoencasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DoencasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DoencasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDoencasRecordData({
  String? nome,
  DateTime? dataDiagnostico,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'dataDiagnostico': dataDiagnostico,
    }.withoutNulls,
  );

  return firestoreData;
}

class DoencasRecordDocumentEquality implements Equality<DoencasRecord> {
  const DoencasRecordDocumentEquality();

  @override
  bool equals(DoencasRecord? e1, DoencasRecord? e2) {
    return e1?.nome == e2?.nome && e1?.dataDiagnostico == e2?.dataDiagnostico;
  }

  @override
  int hash(DoencasRecord? e) =>
      const ListEquality().hash([e?.nome, e?.dataDiagnostico]);

  @override
  bool isValidKey(Object? o) => o is DoencasRecord;
}
