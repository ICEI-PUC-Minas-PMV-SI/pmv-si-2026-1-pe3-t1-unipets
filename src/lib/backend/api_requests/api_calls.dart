import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class UploadCloudinaryCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? file,
    String? uploadPreset = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'uploadCloudinary',
      apiUrl: 'https://api.cloudinary.com/v1_1/dlba44zf6/image/upload',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'file': file,
        'upload_preset': uploadPreset,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic imageUrl(dynamic response) => getJsonField(
        response,
        r'''$.secure_url''',
      );
}

class GeocodeCall {
  static Future<ApiCallResponse> call({
    String? lat = '',
    String? lon = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Geocode',
      apiUrl: 'https://nominatim.openstreetmap.org/reverse',
      callType: ApiCallType.GET,
      headers: {
        'User-Agent': 'UniPetsPUC/1.0',
      },
      params: {
        'lat': lat,
        'lon': lon,
        'format': "json",
        'accept-language': "pt-BR",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? inteiro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.display_name''',
      ));
  static String? rua(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.address.road''',
      ));
  static String? estado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.address.state''',
      ));
  static String? cep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.address.postcode''',
      ));
  static String? cidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.address.city''',
      ));
  static String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.address.suburb''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
