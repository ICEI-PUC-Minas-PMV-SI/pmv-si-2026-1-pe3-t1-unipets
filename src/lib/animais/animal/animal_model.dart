import '/animais/animais/animais_widget.dart';
import '/animais/criar_animal/criar_animal_widget.dart';
import '/animais/filtro_animais/filtro_animais_widget.dart';
import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/drawer_widget.dart';
import '/components/filtros_widget.dart';
import '/components/header_principal_widget.dart';
import '/components/rodape_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'animal_widget.dart' show AnimalWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AnimalModel extends FlutterFlowModel<AnimalWidget> {
  ///  Local state fields for this page.

  String? pesquisa = '';

  double? peso;

  String? raca;

  String? porte;

  String? sexo;

  bool? castrado;

  String? especie;

  List<AnimaisRecord> filtrados = [];
  void addToFiltrados(AnimaisRecord item) => filtrados.add(item);
  void removeFromFiltrados(AnimaisRecord item) => filtrados.remove(item);
  void removeAtIndexFromFiltrados(int index) => filtrados.removeAt(index);
  void insertAtIndexInFiltrados(int index, AnimaisRecord item) =>
      filtrados.insert(index, item);
  void updateFiltradosAtIndex(int index, Function(AnimaisRecord) updateFn) =>
      filtrados[index] = updateFn(filtrados[index]);

  ///  State fields for stateful widgets in this page.

  // Model for drawer component.
  late DrawerModel drawerModel;
  // State field(s) for Column widget.
  ScrollController? columnController1;
  // State field(s) for Column widget.
  ScrollController? columnController2;
  // Model for filtros component.
  late FiltrosModel filtrosModel;
  // Stores action output result for [Custom Action - sortAnimais] action in Button widget.
  List<AnimaisRecord>? filtro;
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
