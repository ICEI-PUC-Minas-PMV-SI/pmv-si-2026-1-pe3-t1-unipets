import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnimaisRecord extends FirestoreRecord {
  AnimaisRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "peso" field.
  double? _peso;
  double get peso => _peso ?? 0.0;
  bool hasPeso() => _peso != null;

  // "raca" field.
  String? _raca;
  String get raca => _raca ?? '';
  bool hasRaca() => _raca != null;

  // "porte" field.
  String? _porte;
  String get porte => _porte ?? '';
  bool hasPorte() => _porte != null;

  // "sexo" field.
  String? _sexo;
  String get sexo => _sexo ?? '';
  bool hasSexo() => _sexo != null;

  // "cor" field.
  String? _cor;
  String get cor => _cor ?? '';
  bool hasCor() => _cor != null;

  // "temperamento" field.
  String? _temperamento;
  String get temperamento => _temperamento ?? '';
  bool hasTemperamento() => _temperamento != null;

  // "castrado" field.
  bool? _castrado;
  bool get castrado => _castrado ?? false;
  bool hasCastrado() => _castrado != null;

  // "adotado" field.
  bool? _adotado;
  bool get adotado => _adotado ?? false;
  bool hasAdotado() => _adotado != null;

  // "responsavelRef" field.
  DocumentReference? _responsavelRef;
  DocumentReference? get responsavelRef => _responsavelRef;
  bool hasResponsavelRef() => _responsavelRef != null;

  // "especie" field.
  String? _especie;
  String get especie => _especie ?? '';
  bool hasEspecie() => _especie != null;

  // "foto" field.
  List<String>? _foto;
  List<String> get foto => _foto ?? const [];
  bool hasFoto() => _foto != null;

  // "idade" field.
  String? _idade;
  String get idade => _idade ?? '';
  bool hasIdade() => _idade != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _peso = castToType<double>(snapshotData['peso']);
    _raca = snapshotData['raca'] as String?;
    _porte = snapshotData['porte'] as String?;
    _sexo = snapshotData['sexo'] as String?;
    _cor = snapshotData['cor'] as String?;
    _temperamento = snapshotData['temperamento'] as String?;
    _castrado = snapshotData['castrado'] as bool?;
    _adotado = snapshotData['adotado'] as bool?;
    _responsavelRef = snapshotData['responsavelRef'] as DocumentReference?;
    _especie = snapshotData['especie'] as String?;
    _foto = getDataList(snapshotData['foto']);
    _idade = snapshotData['idade'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('animais');

  static Stream<AnimaisRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AnimaisRecord.fromSnapshot(s));

  static Future<AnimaisRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AnimaisRecord.fromSnapshot(s));

  static AnimaisRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AnimaisRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnimaisRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnimaisRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnimaisRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnimaisRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnimaisRecordData({
  String? nome,
  double? peso,
  String? raca,
  String? porte,
  String? sexo,
  String? cor,
  String? temperamento,
  bool? castrado,
  bool? adotado,
  DocumentReference? responsavelRef,
  String? especie,
  String? idade,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'peso': peso,
      'raca': raca,
      'porte': porte,
      'sexo': sexo,
      'cor': cor,
      'temperamento': temperamento,
      'castrado': castrado,
      'adotado': adotado,
      'responsavelRef': responsavelRef,
      'especie': especie,
      'idade': idade,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnimaisRecordDocumentEquality implements Equality<AnimaisRecord> {
  const AnimaisRecordDocumentEquality();

  @override
  bool equals(AnimaisRecord? e1, AnimaisRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nome == e2?.nome &&
        e1?.peso == e2?.peso &&
        e1?.raca == e2?.raca &&
        e1?.porte == e2?.porte &&
        e1?.sexo == e2?.sexo &&
        e1?.cor == e2?.cor &&
        e1?.temperamento == e2?.temperamento &&
        e1?.castrado == e2?.castrado &&
        e1?.adotado == e2?.adotado &&
        e1?.responsavelRef == e2?.responsavelRef &&
        e1?.especie == e2?.especie &&
        listEquality.equals(e1?.foto, e2?.foto) &&
        e1?.idade == e2?.idade;
  }

  @override
  int hash(AnimaisRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.peso,
        e?.raca,
        e?.porte,
        e?.sexo,
        e?.cor,
        e?.temperamento,
        e?.castrado,
        e?.adotado,
        e?.responsavelRef,
        e?.especie,
        e?.foto,
        e?.idade
      ]);

  @override
  bool isValidKey(Object? o) => o is AnimaisRecord;
}
