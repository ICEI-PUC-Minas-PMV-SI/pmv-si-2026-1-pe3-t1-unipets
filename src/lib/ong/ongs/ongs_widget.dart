import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/ong/detalhes_ongs/detalhes_ongs_widget.dart';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ongs_model.dart';
export 'ongs_model.dart';

/// Create a component that should have a photo on the left and an information
/// column on the right.
///
/// The information will be: NGO name, address, donation information (Pixel),
/// and a button that says "View available animals".
class OngsWidget extends StatefulWidget {
  const OngsWidget({
    super.key,
    required this.ong,
  });

  final DocumentReference? ong;

  @override
  State<OngsWidget> createState() => _OngsWidgetState();
}

class _OngsWidgetState extends State<OngsWidget> {
  late OngsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OngsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
      child: StreamBuilder<UsuariosRecord>(
        stream: UsuariosRecord.getDocument(widget!.ong!),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitFadingCircle(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 50.0,
                ),
              ),
            );
          }

          final containerUsuariosRecord = snapshot.data!;

          return Container(
            width: 300.0,
            height: 450.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4.0,
                  color: Color(0x33000000),
                  offset: Offset(
                    4.0,
                    4.0,
                  ),
                )
              ],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      valueOrDefault<String>(
                        containerUsuariosRecord.photoUrl,
                        'https://images.unsplash.com/photo-1654093877072-4ea42b8397e6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHJhbmRvbXx8fHx8fHx8fDE3Nzc3NjkyMjJ8&ixlib=rb-4.1.0&q=80&w=1080',
                      ),
                      width: 300.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Text(
                      key: ValueKey(containerUsuariosRecord.displayName),
                      containerUsuariosRecord.displayName,
                      maxLines: 1,
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleLargeFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleLargeIsCustom,
                          ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 16.0,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: containerUsuariosRecord.estado,
                                  style: TextStyle(),
                                ),
                                TextSpan(
                                  text: (String var1) {
                                    return '\n' + var1;
                                  }(containerUsuariosRecord.cidade),
                                  style: TextStyle(),
                                ),
                                TextSpan(
                                  text: (String var1) {
                                    return '\n' + var1;
                                  }(containerUsuariosRecord.bairro),
                                  style: TextStyle(),
                                ),
                                TextSpan(
                                  text: (String var1) {
                                    return '\n' + var1;
                                  }(containerUsuariosRecord.rua),
                                  style: TextStyle(),
                                )
                              ],
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyLargeFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyLargeIsCustom,
                                  ),
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ].divide(SizedBox(width: 12.0)),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.whatsappSquare,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 16.0,
                      ),
                      Text(
                        key: ValueKey(containerUsuariosRecord.phoneNumber),
                        containerUsuariosRecord.phoneNumber,
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).labelLargeFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .labelLargeIsCustom,
                            ),
                      ),
                    ].divide(SizedBox(width: 12.0)),
                  ),
                  Flexible(
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: Builder(
                        builder: (context) => FFButtonWidget(
                          onPressed: () async {
                            await showDialog(
                              context: context,
                              builder: (dialogContext) {
                                return Dialog(
                                  elevation: 0,
                                  insetPadding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  alignment: AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  child: DetalhesOngsWidget(
                                    ong: containerUsuariosRecord.reference,
                                  ),
                                );
                              },
                            );
                          },
                          text: 'Ver detalhes',
                          options: FFButtonOptions(
                            width: 200.0,
                            height: 48.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleMediumFamily,
                                  color: Colors.white,
                                  letterSpacing: 1.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .titleMediumIsCustom,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ].divide(SizedBox(height: 8.0)),
              ),
            ),
          );
        },
      ),
    );
  }
}
