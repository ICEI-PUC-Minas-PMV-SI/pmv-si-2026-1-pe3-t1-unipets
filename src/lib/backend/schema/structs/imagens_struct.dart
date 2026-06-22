// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImagensStruct extends FFFirebaseStruct {
  ImagensStruct({
    List<String>? imagem,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _imagem = imagem,
        super(firestoreUtilData);

  // "imagem" field.
  List<String>? _imagem;
  List<String> get imagem => _imagem ?? const [];
  set imagem(List<String>? val) => _imagem = val;

  void updateImagem(Function(List<String>) updateFn) {
    updateFn(_imagem ??= []);
  }

  bool hasImagem() => _imagem != null;

  static ImagensStruct fromMap(Map<String, dynamic> data) => ImagensStruct(
        imagem: getDataList(data['imagem']),
      );

  static ImagensStruct? maybeFromMap(dynamic data) =>
      data is Map ? ImagensStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'imagem': _imagem,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'imagem': serializeParam(
          _imagem,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static ImagensStruct fromSerializableMap(Map<String, dynamic> data) =>
      ImagensStruct(
        imagem: deserializeParam<String>(
          data['imagem'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'ImagensStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ImagensStruct && listEquality.equals(imagem, other.imagem);
  }

  @override
  int get hashCode => const ListEquality().hash([imagem]);
}

ImagensStruct createImagensStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ImagensStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ImagensStruct? updateImagensStruct(
  ImagensStruct? imagens, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    imagens
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addImagensStructData(
  Map<String, dynamic> firestoreData,
  ImagensStruct? imagens,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (imagens == null) {
    return;
  }
  if (imagens.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && imagens.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final imagensData = getImagensFirestoreData(imagens, forFieldValue);
  final nestedData = imagensData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = imagens.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getImagensFirestoreData(
  ImagensStruct? imagens, [
  bool forFieldValue = false,
]) {
  if (imagens == null) {
    return {};
  }
  final firestoreData = mapToFirestore(imagens.toMap());

  // Add any Firestore field values
  mapToFirestore(imagens.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getImagensListFirestoreData(
  List<ImagensStruct>? imagenss,
) =>
    imagenss?.map((e) => getImagensFirestoreData(e, true)).toList() ?? [];
