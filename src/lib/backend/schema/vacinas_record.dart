import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VacinasRecord extends FirestoreRecord {
  VacinasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "dataAplicacao" field.
  DateTime? _dataAplicacao;
  DateTime? get dataAplicacao => _dataAplicacao;
  bool hasDataAplicacao() => _dataAplicacao != null;

  // "dataReforco" field.
  DateTime? _dataReforco;
  DateTime? get dataReforco => _dataReforco;
  bool hasDataReforco() => _dataReforco != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _dataAplicacao = snapshotData['dataAplicacao'] as DateTime?;
    _dataReforco = snapshotData['dataReforco'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('vacinas')
          : FirebaseFirestore.instance.collectionGroup('vacinas');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('vacinas').doc(id);

  static Stream<VacinasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VacinasRecord.fromSnapshot(s));

  static Future<VacinasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VacinasRecord.fromSnapshot(s));

  static VacinasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VacinasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VacinasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VacinasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VacinasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VacinasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVacinasRecordData({
  String? nome,
  DateTime? dataAplicacao,
  DateTime? dataReforco,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'dataAplicacao': dataAplicacao,
      'dataReforco': dataReforco,
    }.withoutNulls,
  );

  return firestoreData;
}

class VacinasRecordDocumentEquality implements Equality<VacinasRecord> {
  const VacinasRecordDocumentEquality();

  @override
  bool equals(VacinasRecord? e1, VacinasRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.dataAplicacao == e2?.dataAplicacao &&
        e1?.dataReforco == e2?.dataReforco;
  }

  @override
  int hash(VacinasRecord? e) =>
      const ListEquality().hash([e?.nome, e?.dataAplicacao, e?.dataReforco]);

  @override
  bool isValidKey(Object? o) => o is VacinasRecord;
}
