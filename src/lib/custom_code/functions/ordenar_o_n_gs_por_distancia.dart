import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

List<UsuariosRecord>? ordenarONGsPorDistancia(
  LatLng? localizacaoUsuario,
  List<UsuariosRecord>? ongs,
  bool? ordenar,
) {
  if (ongs == null || localizacaoUsuario == null) return [];

  double calcularDistancia(p1, p2) {
    final lat1 = p1.latitude * math.pi / 180;
    final lat2 = p2.latitude * math.pi / 180;
    final dLat = (p2.latitude - p1.latitude) * math.pi / 180;
    final dLon = (p2.longitude - p1.longitude) * math.pi / 180;
    final a = math.sin(dLat / 2) * math.sin(dLat / 2) +
        math.cos(lat1) *
            math.cos(lat2) *
            math.sin(dLon / 2) *
            math.sin(dLon / 2);
    return 6371 * 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));
  }

  final userLoc = localizacaoUsuario!;
  final lista = (ongs! as List).map((o) => o as dynamic).toList();
  final comLoc = lista.where((o) => o.latitudelong != null).toList();
  final semLoc = lista.where((o) => o.latitudelong == null).toList();

  comLoc.sort((a, b) {
    if (a == null || b == null) return 0;
    return calcularDistancia(userLoc, a.latitudelong!)
        .compareTo(calcularDistancia(userLoc, b.latitudelong!));
  });
  // teste
  return [...comLoc, ...semLoc];
}
