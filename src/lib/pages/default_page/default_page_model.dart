import '/components/drawer_widget.dart';
import '/components/header_principal_widget.dart';
import '/components/rodape_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'default_page_widget.dart' show DefaultPageWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DefaultPageModel extends FlutterFlowModel<DefaultPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for drawer component.
  late DrawerModel drawerModel;
  // State field(s) for Column widget.
  ScrollController? columnController1;
  // State field(s) for Column widget.
  ScrollController? columnController2;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController1;
  int carouselCurrentIndex1 = 1;

  // Model for header_Principal component.
  late HeaderPrincipalModel headerPrincipalModel;
  // State field(s) for Column widget.
  ScrollController? columnController3;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController2;
  int carouselCurrentIndex2 = 1;

  // Model for rodape component.
  late RodapeModel rodapeModel;

  @override
  void initState(BuildContext context) {
    drawerModel = createModel(context, () => DrawerModel());
    columnController1 = ScrollController();
    columnController2 = ScrollController();
    headerPrincipalModel = createModel(context, () => HeaderPrincipalModel());
    columnController3 = ScrollController();
    rodapeModel = createModel(context, () => RodapeModel());
  }

  @override
  void dispose() {
    drawerModel.dispose();
    columnController1?.dispose();
    columnController2?.dispose();
    headerPrincipalModel.dispose();
    columnController3?.dispose();
    rodapeModel.dispose();
  }
}
