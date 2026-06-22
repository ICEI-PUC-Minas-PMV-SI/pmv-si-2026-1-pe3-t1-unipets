// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:math' as math;

Future<List<DocumentReference>> sortPosts(
  LatLng localizacaoUsuario,
  List<PostsRecord> posts,
) async {
  if (posts == null) return [];
  if (localizacaoUsuario == null) {
    return posts!.where((p) => p != null).map((p) => p!.reference).toList();
  }

  final userLat = localizacaoUsuario!.latitude;
  final userLon = localizacaoUsuario!.longitude;

  double calcDist(double lat2, double lon2) {
    final la1 = userLat * math.pi / 180;
    final la2 = lat2 * math.pi / 180;
    final dLat = (lat2 - userLat) * math.pi / 180;
    final dLon = (lon2 - userLon) * math.pi / 180;
    final a = math.sin(dLat / 2) * math.sin(dLat / 2) +
        math.cos(la1) * math.cos(la2) * math.sin(dLon / 2) * math.sin(dLon / 2);
    return 6371 * 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));
  }

  final criadores = await Future.wait(posts!.map((p) async {
    final ref = p?.criadorRef;
    if (ref == null) return null;
    try {
      return await UsuariosRecord.getDocumentOnce(ref);
    } catch (e) {
      return null;
    }
  }));

  final distances = <int, double>{};
  for (int i = 0; i < posts!.length; i++) {
    final loc = criadores[i]?.latitudelong;
    distances[i] =
        loc != null ? calcDist(loc.latitude, loc.longitude) : double.maxFinite;
  }

  final indices = List.generate(posts!.length, (i) => i);
  indices.sort((a, b) => distances[a]!.compareTo(distances[b]!));

  return indices
      .map((i) => posts![i]?.reference)
      .where((r) => r != null)
      .map((r) => r!)
      .toList();
}
