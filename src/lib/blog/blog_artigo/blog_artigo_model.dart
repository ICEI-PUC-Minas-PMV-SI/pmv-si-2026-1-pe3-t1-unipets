import '/animais/animais/animais_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/blog/criar_artigo_comp_copy/criar_artigo_comp_copy_widget.dart';
import '/components/apoiador_widget.dart';
import '/components/comentarios_widget.dart';
import '/components/drawer_widget.dart';
import '/components/header_principal_widget.dart';
import '/components/rodape_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/ong/ongs/ongs_widget.dart';
import 'dart:math';
import 'dart:ui';
import 'blog_artigo_widget.dart' show BlogArtigoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BlogArtigoModel extends FlutterFlowModel<BlogArtigoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for drawer component.
  late DrawerModel drawerModel;
  // State field(s) for Column widget.
  ScrollController? columnController1;
  // State field(s) for Column widget.
  ScrollController? columnController2;
  // Model for animais component.
  late AnimaisModel animaisModel;
  // Model for comentarios component.
  late ComentariosModel comentariosModel;
  // Model for ongs component.
  late OngsModel ongsModel;
  // Model for header_Principal component.
  late HeaderPrincipalModel headerPrincipalModel;
  // Model for rodape component.
  late RodapeModel rodapeModel;

  @override
  void initState(BuildContext context) {
    drawerModel = createModel(context, () => DrawerModel());
    columnController1 = ScrollController();
    columnController2 = ScrollController();
    animaisModel = createModel(context, () => AnimaisModel());
    comentariosModel = createModel(context, () => ComentariosModel());
    ongsModel = createModel(context, () => OngsModel());
    headerPrincipalModel = createModel(context, () => HeaderPrincipalModel());
    rodapeModel = createModel(context, () => RodapeModel());
  }

  @override
  void dispose() {
    drawerModel.dispose();
    columnController1?.dispose();
    columnController2?.dispose();
    animaisModel.dispose();
    comentariosModel.dispose();
    ongsModel.dispose();
    headerPrincipalModel.dispose();
    rodapeModel.dispose();
  }
}
