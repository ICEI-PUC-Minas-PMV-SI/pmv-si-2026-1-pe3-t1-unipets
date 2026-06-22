import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'editar_perfil_widget.dart' show EditarPerfilWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class EditarPerfilModel extends FlutterFlowModel<EditarPerfilWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Column widget.
  ScrollController? columnController1;
  // State field(s) for Column widget.
  ScrollController? columnController2;
  bool isDataUploading_uploadDataPbz = false;
  FFUploadedFile uploadedLocalFile_uploadDataPbz =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // Stores action output result for [Backend Call - API (uploadCloudinary)] action in uploadedImage widget.
  ApiCallResponse? apiResult8w7;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode1;
  TextEditingController? yourNameTextController1;
  late MaskTextInputFormatter yourNameMask1;
  String? Function(BuildContext, String?)? yourNameTextController1Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode2;
  TextEditingController? yourNameTextController2;
  String? Function(BuildContext, String?)? yourNameTextController2Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode3;
  TextEditingController? yourNameTextController3;
  String? Function(BuildContext, String?)? yourNameTextController3Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode4;
  TextEditingController? yourNameTextController4;
  String? Function(BuildContext, String?)? yourNameTextController4Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode5;
  TextEditingController? yourNameTextController5;
  String? Function(BuildContext, String?)? yourNameTextController5Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode6;
  TextEditingController? yourNameTextController6;
  String? Function(BuildContext, String?)? yourNameTextController6Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode7;
  TextEditingController? yourNameTextController7;
  String? Function(BuildContext, String?)? yourNameTextController7Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode8;
  TextEditingController? yourNameTextController8;
  String? Function(BuildContext, String?)? yourNameTextController8Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode9;
  TextEditingController? yourNameTextController9;
  String? Function(BuildContext, String?)? yourNameTextController9Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode10;
  TextEditingController? yourNameTextController10;
  String? Function(BuildContext, String?)? yourNameTextController10Validator;
  // Stores action output result for [Custom Action - getWebLocation] action in Button-Login widget.
  LatLng? loca;

  @override
  void initState(BuildContext context) {
    columnController1 = ScrollController();
    columnController2 = ScrollController();
  }

  @override
  void dispose() {
    columnController1?.dispose();
    columnController2?.dispose();
    yourNameFocusNode1?.dispose();
    yourNameTextController1?.dispose();

    yourNameFocusNode2?.dispose();
    yourNameTextController2?.dispose();

    yourNameFocusNode3?.dispose();
    yourNameTextController3?.dispose();

    yourNameFocusNode4?.dispose();
    yourNameTextController4?.dispose();

    yourNameFocusNode5?.dispose();
    yourNameTextController5?.dispose();

    yourNameFocusNode6?.dispose();
    yourNameTextController6?.dispose();

    yourNameFocusNode7?.dispose();
    yourNameTextController7?.dispose();

    yourNameFocusNode8?.dispose();
    yourNameTextController8?.dispose();

    yourNameFocusNode9?.dispose();
    yourNameTextController9?.dispose();

    yourNameFocusNode10?.dispose();
    yourNameTextController10?.dispose();
  }
}
