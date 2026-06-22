import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContribuidoresRecord extends FirestoreRecord {
  ContribuidoresRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "foto" field.
  List<String>? _foto;
  List<String> get foto => _foto ?? const [];
  bool hasFoto() => _foto != null;

  // "banner" field.
  List<String>? _banner;
  List<String> get banner => _banner ?? const [];
  bool hasBanner() => _banner != null;

  // "link" field.
  List<String>? _link;
  List<String> get link => _link ?? const [];
  bool hasLink() => _link != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _foto = getDataList(snapshotData['foto']);
    _banner = getDataList(snapshotData['banner']);
    _link = getDataList(snapshotData['link']);
    _descricao = snapshotData['descricao'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('contribuidores');

  static Stream<ContribuidoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContribuidoresRecord.fromSnapshot(s));

  static Future<ContribuidoresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContribuidoresRecord.fromSnapshot(s));

  static ContribuidoresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContribuidoresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContribuidoresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContribuidoresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContribuidoresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContribuidoresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContribuidoresRecordData({
  String? nome,
  String? descricao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'descricao': descricao,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContribuidoresRecordDocumentEquality
    implements Equality<ContribuidoresRecord> {
  const ContribuidoresRecordDocumentEquality();

  @override
  bool equals(ContribuidoresRecord? e1, ContribuidoresRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nome == e2?.nome &&
        listEquality.equals(e1?.foto, e2?.foto) &&
        listEquality.equals(e1?.banner, e2?.banner) &&
        listEquality.equals(e1?.link, e2?.link) &&
        e1?.descricao == e2?.descricao;
  }

  @override
  int hash(ContribuidoresRecord? e) => const ListEquality()
      .hash([e?.nome, e?.foto, e?.banner, e?.link, e?.descricao]);

  @override
  bool isValidKey(Object? o) => o is ContribuidoresRecord;
}
