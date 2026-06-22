import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExamesRecord extends FirestoreRecord {
  ExamesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "exameSolicitado" field.
  String? _exameSolicitado;
  String get exameSolicitado => _exameSolicitado ?? '';
  bool hasExameSolicitado() => _exameSolicitado != null;

  // "dataRealizacao" field.
  DateTime? _dataRealizacao;
  DateTime? get dataRealizacao => _dataRealizacao;
  bool hasDataRealizacao() => _dataRealizacao != null;

  // "resultadoArquivo" field.
  String? _resultadoArquivo;
  String get resultadoArquivo => _resultadoArquivo ?? '';
  bool hasResultadoArquivo() => _resultadoArquivo != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _exameSolicitado = snapshotData['exameSolicitado'] as String?;
    _dataRealizacao = snapshotData['dataRealizacao'] as DateTime?;
    _resultadoArquivo = snapshotData['resultadoArquivo'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('exames')
          : FirebaseFirestore.instance.collectionGroup('exames');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('exames').doc(id);

  static Stream<ExamesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ExamesRecord.fromSnapshot(s));

  static Future<ExamesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ExamesRecord.fromSnapshot(s));

  static ExamesRecord fromSnapshot(DocumentSnapshot snapshot) => ExamesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ExamesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ExamesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ExamesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ExamesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createExamesRecordData({
  String? exameSolicitado,
  DateTime? dataRealizacao,
  String? resultadoArquivo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'exameSolicitado': exameSolicitado,
      'dataRealizacao': dataRealizacao,
      'resultadoArquivo': resultadoArquivo,
    }.withoutNulls,
  );

  return firestoreData;
}

class ExamesRecordDocumentEquality implements Equality<ExamesRecord> {
  const ExamesRecordDocumentEquality();

  @override
  bool equals(ExamesRecord? e1, ExamesRecord? e2) {
    return e1?.exameSolicitado == e2?.exameSolicitado &&
        e1?.dataRealizacao == e2?.dataRealizacao &&
        e1?.resultadoArquivo == e2?.resultadoArquivo;
  }

  @override
  int hash(ExamesRecord? e) => const ListEquality()
      .hash([e?.exameSolicitado, e?.dataRealizacao, e?.resultadoArquivo]);

  @override
  bool isValidKey(Object? o) => o is ExamesRecord;
}
