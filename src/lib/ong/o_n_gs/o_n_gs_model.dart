import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/apoiador_widget.dart';
import '/components/drawer_widget.dart';
import '/components/filtros_widget.dart';
import '/components/header_principal_widget.dart';
import '/components/rodape_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/ong/ongs/ongs_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'o_n_gs_widget.dart' show ONGsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ONGsModel extends FlutterFlowModel<ONGsWidget> {
  ///  Local state fields for this page.

  String? pesquisa;

  List<DocumentReference> ongsOrdenadas = [];
  void addToOngsOrdenadas(DocumentReference item) => ongsOrdenadas.add(item);
  void removeFromOngsOrdenadas(DocumentReference item) =>
      ongsOrdenadas.remove(item);
  void removeAtIndexFromOngsOrdenadas(int index) =>
      ongsOrdenadas.removeAt(index);
  void insertAtIndexInOngsOrdenadas(int index, DocumentReference item) =>
      ongsOrdenadas.insert(index, item);
  void updateOngsOrdenadasAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      ongsOrdenadas[index] = updateFn(ongsOrdenadas[index]);

  ///  State fields for stateful widgets in this page.

  // Model for drawer component.
  late DrawerModel drawerModel;
  // State field(s) for Column widget.
  ScrollController? columnController1;
  // State field(s) for Column widget.
  ScrollController? columnController2;
  // Stores action output result for [Custom Action - sortONGs] action in Button widget.
  List<DocumentReference>? listaOng;
  // Model for filtros component.
  late FiltrosModel filtrosModel;
  // Model for header_Principal component.
  late HeaderPrincipalModel headerPrincipalModel;
  // Model for rodape component.
  late RodapeModel rodapeModel;

  @override
  void initState(BuildContext context) {
    drawerModel = createModel(context, () => DrawerModel());
    columnController1 = ScrollController();
    columnController2 = ScrollController();
    filtrosModel = createModel(context, () => FiltrosModel());
    headerPrincipalModel = createModel(context, () => HeaderPrincipalModel());
    rodapeModel = createModel(context, () => RodapeModel());
  }

  @override
  void dispose() {
    drawerModel.dispose();
    columnController1?.dispose();
    columnController2?.dispose();
    filtrosModel.dispose();
    headerPrincipalModel.dispose();
    rodapeModel.dispose();
  }
}
