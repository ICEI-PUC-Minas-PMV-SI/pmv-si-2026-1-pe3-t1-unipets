import '/backend/backend.dart';
import '/components/apoiador_widget.dart';
import '/components/drawer_widget.dart';
import '/components/header_principal_widget.dart';
import '/components/rodape_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for drawer component.
  late DrawerModel drawerModel;
  // State field(s) for Column widget.
  ScrollController? columnController1;
  // State field(s) for Column widget.
  ScrollController? columnController2;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController1;
  int carouselCurrentIndex1 = 2;

  // State field(s) for Expandable_Animais widget.
  late ExpandableController expandableAnimaisExpandableController1;

  // State field(s) for Expandable_Animais widget.
  late ExpandableController expandableAnimaisExpandableController2;

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController2;
  int carouselCurrentIndex2 = 1;

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController3;
  int carouselCurrentIndex3 = 1;

  // Model for rodape component.
  late RodapeModel rodapeModel;
  // Model for header_Principal component.
  late HeaderPrincipalModel headerPrincipalModel;

  @override
  void initState(BuildContext context) {
    drawerModel = createModel(context, () => DrawerModel());
    columnController1 = ScrollController();
    columnController2 = ScrollController();
    rodapeModel = createModel(context, () => RodapeModel());
    headerPrincipalModel = createModel(context, () => HeaderPrincipalModel());
  }

  @override
  void dispose() {
    drawerModel.dispose();
    columnController1?.dispose();
    columnController2?.dispose();
    expandableAnimaisExpandableController1.dispose();
    expandableAnimaisExpandableController2.dispose();
    rodapeModel.dispose();
    headerPrincipalModel.dispose();
  }
}
