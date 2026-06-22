import '/components/drawer_widget.dart';
import '/components/header_principal_widget.dart';
import '/components/rodape_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'publicar_editar_artigo_copy_widget.dart'
    show PublicarEditarArtigoCopyWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PublicarEditarArtigoCopyModel
    extends FlutterFlowModel<PublicarEditarArtigoCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for drawer component.
  late DrawerModel drawerModel;
  // State field(s) for Column widget.
  ScrollController? columnController1;
  // State field(s) for Column widget.
  ScrollController? columnController2;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  // State field(s) for Column widget.
  ScrollController? columnController3;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for DropDown widget.
  List<String>? dropDownValue;
  FormFieldController<List<String>>? dropDownValueController;
  // Model for header_Principal component.
  late HeaderPrincipalModel headerPrincipalModel;
  // Model for rodape component.
  late RodapeModel rodapeModel;

  @override
  void initState(BuildContext context) {
    drawerModel = createModel(context, () => DrawerModel());
    columnController1 = ScrollController();
    columnController2 = ScrollController();
    columnController3 = ScrollController();
    headerPrincipalModel = createModel(context, () => HeaderPrincipalModel());
    rodapeModel = createModel(context, () => RodapeModel());
  }

  @override
  void dispose() {
    drawerModel.dispose();
    columnController1?.dispose();
    columnController2?.dispose();
    columnController3?.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    headerPrincipalModel.dispose();
    rodapeModel.dispose();
  }
}
