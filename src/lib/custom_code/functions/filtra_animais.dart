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

List<AnimaisRecord>? filtraAnimais(
  List<AnimaisRecord>? animais,
  String? porte,
  bool? castrado,
  double? peso,
  String? raca,
  String? sexo,
) {
  return animais!.where((a) {
    if (porte != null && porte!.isNotEmpty && a.porte != porte) return false;
    if (sexo != null && sexo!.isNotEmpty && a.sexo != sexo) return false;
    if (raca != null && raca!.isNotEmpty && a.raca != raca) return false;
    if (castrado != null && a.castrado != castrado) return false;
    if (peso != null && a.peso > peso!) return false;
    return true;
    //teste
  }).toList();
}
