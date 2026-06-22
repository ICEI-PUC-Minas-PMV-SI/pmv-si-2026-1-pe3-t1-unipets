import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostsRecord extends FirestoreRecord {
  PostsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  bool hasCategoria() => _categoria != null;

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "imagem" field.
  String? _imagem;
  String get imagem => _imagem ?? '';
  bool hasImagem() => _imagem != null;

  // "texto" field.
  String? _texto;
  String get texto => _texto ?? '';
  bool hasTexto() => _texto != null;

  // "criadorRef" field.
  DocumentReference? _criadorRef;
  DocumentReference? get criadorRef => _criadorRef;
  bool hasCriadorRef() => _criadorRef != null;

  // "ativo" field.
  bool? _ativo;
  bool get ativo => _ativo ?? false;
  bool hasAtivo() => _ativo != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "dataEvento" field.
  DateTime? _dataEvento;
  DateTime? get dataEvento => _dataEvento;
  bool hasDataEvento() => _dataEvento != null;

  // "capacidade" field.
  int? _capacidade;
  int get capacidade => _capacidade ?? 0;
  bool hasCapacidade() => _capacidade != null;

  // "resumo" field.
  String? _resumo;
  String get resumo => _resumo ?? '';
  bool hasResumo() => _resumo != null;

  // "animalRef" field.
  String? _animalRef;
  String get animalRef => _animalRef ?? '';
  bool hasAnimalRef() => _animalRef != null;

  void _initializeFields() {
    _categoria = snapshotData['categoria'] as String?;
    _titulo = snapshotData['titulo'] as String?;
    _imagem = snapshotData['imagem'] as String?;
    _texto = snapshotData['texto'] as String?;
    _criadorRef = snapshotData['criadorRef'] as DocumentReference?;
    _ativo = snapshotData['ativo'] as bool?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _dataEvento = snapshotData['dataEvento'] as DateTime?;
    _capacidade = castToType<int>(snapshotData['capacidade']);
    _resumo = snapshotData['resumo'] as String?;
    _animalRef = snapshotData['animalRef'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('posts');

  static Stream<PostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostsRecord.fromSnapshot(s));

  static Future<PostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostsRecord.fromSnapshot(s));

  static PostsRecord fromSnapshot(DocumentSnapshot snapshot) => PostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostsRecordData({
  String? categoria,
  String? titulo,
  String? imagem,
  String? texto,
  DocumentReference? criadorRef,
  bool? ativo,
  DateTime? createdAt,
  DateTime? dataEvento,
  int? capacidade,
  String? resumo,
  String? animalRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'categoria': categoria,
      'titulo': titulo,
      'imagem': imagem,
      'texto': texto,
      'criadorRef': criadorRef,
      'ativo': ativo,
      'createdAt': createdAt,
      'dataEvento': dataEvento,
      'capacidade': capacidade,
      'resumo': resumo,
      'animalRef': animalRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostsRecordDocumentEquality implements Equality<PostsRecord> {
  const PostsRecordDocumentEquality();

  @override
  bool equals(PostsRecord? e1, PostsRecord? e2) {
    return e1?.categoria == e2?.categoria &&
        e1?.titulo == e2?.titulo &&
        e1?.imagem == e2?.imagem &&
        e1?.texto == e2?.texto &&
        e1?.criadorRef == e2?.criadorRef &&
        e1?.ativo == e2?.ativo &&
        e1?.createdAt == e2?.createdAt &&
        e1?.dataEvento == e2?.dataEvento &&
        e1?.capacidade == e2?.capacidade &&
        e1?.resumo == e2?.resumo &&
        e1?.animalRef == e2?.animalRef;
  }

  @override
  int hash(PostsRecord? e) => const ListEquality().hash([
        e?.categoria,
        e?.titulo,
        e?.imagem,
        e?.texto,
        e?.criadorRef,
        e?.ativo,
        e?.createdAt,
        e?.dataEvento,
        e?.capacidade,
        e?.resumo,
        e?.animalRef
      ]);

  @override
  bool isValidKey(Object? o) => o is PostsRecord;
}
