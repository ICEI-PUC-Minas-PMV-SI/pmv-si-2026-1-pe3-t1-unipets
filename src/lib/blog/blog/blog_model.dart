import '/backend/backend.dart';
import '/blog/bloco_m/bloco_m_widget.dart';
import '/blog/criar_artigo_comp/criar_artigo_comp_widget.dart';
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
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'blog_widget.dart' show BlogWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BlogModel extends FlutterFlowModel<BlogWidget> {
  ///  Local state fields for this page.

  String? pesquisa;

  ///  State fields for stateful widgets in this page.

  // Model for drawer component.
  late DrawerModel drawerModel;
  // State field(s) for Column widget.
  ScrollController? columnController1;
  // State field(s) for Column widget.
  ScrollController? columnController2;
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
