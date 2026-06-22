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
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'o_n_gs_model.dart';
export 'o_n_gs_model.dart';

class ONGsWidget extends StatefulWidget {
  const ONGsWidget({super.key});

  static String routeName = 'ONGs';
  static String routePath = '/oNGs';

  @override
  State<ONGsWidget> createState() => _ONGsWidgetState();
}

class _ONGsWidgetState extends State<ONGsWidget> with TickerProviderStateMixin {
  late ONGsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ONGsModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(3.0, 3.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<UsuariosRecord>>(
      stream: queryUsuariosRecord(
        queryBuilder: (usuariosRecord) => usuariosRecord
            .where(
              'tipo',
              isEqualTo: 'Instituição',
            )
            .where(
              'display_name',
              isGreaterThanOrEqualTo: _model.pesquisa,
            )
            .where(
              'display_name',
              isLessThanOrEqualTo: functions.termoBusca(_model.pesquisa),
            ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitFadingCircle(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        List<UsuariosRecord> oNGsUsuariosRecordList = snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            drawer: Drawer(
              elevation: 16.0,
              child: Visibility(
                visible: responsiveVisibility(
                  context: context,
                  tabletLandscape: false,
                  desktop: false,
                ),
                child: wrapWithModel(
                  model: _model.drawerModel,
                  updateCallback: () => safeSetState(() {}),
                  child: DrawerWidget(),
                ),
              ),
            ),
            body: SafeArea(
              top: true,
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: SingleChildScrollView(
                  controller: _model.columnController1,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        height: MediaQuery.sizeOf(context).height,
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: Container(
                                width: double.infinity,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.35,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      FlutterFlowTheme.of(context).primary,
                                      FlutterFlowTheme.of(context).secondary,
                                      FlutterFlowTheme.of(context).tertiary
                                    ],
                                    stops: [0.0, 0.5, 1.0],
                                    begin: AlignmentDirectional(-1.0, -1.0),
                                    end: AlignmentDirectional(1.0, 1.0),
                                  ),
                                ),
                                child: Container(
                                  width: 100.0,
                                  height: 200.0,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0x00FFFFFF),
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground
                                      ],
                                      stops: [0.0, 1.0],
                                      begin: AlignmentDirectional(0.0, 1.0),
                                      end: AlignmentDirectional(0, -1.0),
                                    ),
                                    border: Border.all(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'containerOnPageLoadAnimation']!),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 70.0, 0.0, 0.0),
                                child: SingleChildScrollView(
                                  primary: false,
                                  controller: _model.columnController2,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 16.0, 24.0, 0.0),
                                          child: Text(
                                            'ONGs',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineLargeFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .headlineLargeIsCustom,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 24.0, 0.0, 0.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              if (!(_model
                                                  .ongsOrdenadas.isNotEmpty)) {
                                                _model.listaOng =
                                                    await actions.sortONGs(
                                                  currentUserDocument
                                                      ?.latitudelong,
                                                  oNGsUsuariosRecordList
                                                      .toList(),
                                                );
                                                _model.ongsOrdenadas = _model
                                                    .listaOng!
                                                    .toList()
                                                    .cast<DocumentReference>();
                                                safeSetState(() {});
                                              } else {
                                                _model.ongsOrdenadas = [];
                                                safeSetState(() {});
                                              }

                                              safeSetState(() {});
                                            },
                                            text: 'Encontrar ONGS próximas',
                                            options: FFButtonOptions(
                                              height: 48.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelLarge
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelLargeFamily,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    letterSpacing: 1.0,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .labelLargeIsCustom,
                                                  ),
                                              elevation: 0.0,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.filtrosModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: FiltrosWidget(
                                          aoDigitar: (texto) async {
                                            _model.pesquisa = texto;
                                            safeSetState(() {});
                                          },
                                        ),
                                      ),
                                      if (responsiveVisibility(
                                        context: context,
                                        tabletLandscape: false,
                                        desktop: false,
                                      ))
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                        ),
                                      Flexible(
                                        child: Padding(
                                          padding: EdgeInsets.all(32.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Flexible(
                                                child: Wrap(
                                                  spacing: 24.0,
                                                  runSpacing: 32.0,
                                                  alignment:
                                                      WrapAlignment.center,
                                                  crossAxisAlignment:
                                                      WrapCrossAlignment.start,
                                                  direction: Axis.horizontal,
                                                  runAlignment:
                                                      WrapAlignment.start,
                                                  verticalDirection:
                                                      VerticalDirection.down,
                                                  clipBehavior: Clip.none,
                                                  children: [
                                                    Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.69,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 4.0,
                                                            color: Color(
                                                                0x33000000),
                                                            offset: Offset(
                                                              0.0,
                                                              2.0,
                                                            ),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                      child: Stack(
                                                        children: [
                                                          if (_model
                                                                  .ongsOrdenadas
                                                                  .isNotEmpty
                                                              ? false
                                                              : true)
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(8.0),
                                                              child: Builder(
                                                                builder:
                                                                    (context) {
                                                                  final oNGs =
                                                                      oNGsUsuariosRecordList
                                                                          .toList();

                                                                  return Wrap(
                                                                    spacing:
                                                                        12.0,
                                                                    runSpacing:
                                                                        16.0,
                                                                    alignment:
                                                                        WrapAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        WrapCrossAlignment
                                                                            .center,
                                                                    direction: Axis
                                                                        .horizontal,
                                                                    runAlignment:
                                                                        WrapAlignment
                                                                            .center,
                                                                    verticalDirection:
                                                                        VerticalDirection
                                                                            .down,
                                                                    clipBehavior:
                                                                        Clip.none,
                                                                    children: List.generate(
                                                                        oNGs.length,
                                                                        (oNGsIndex) {
                                                                      final oNGsItem =
                                                                          oNGs[
                                                                              oNGsIndex];
                                                                      return OngsWidget(
                                                                        key: Key(
                                                                            'Key0xb_${oNGsIndex}_of_${oNGs.length}'),
                                                                        ong: oNGsItem
                                                                            .reference,
                                                                      );
                                                                    }),
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          if ((_model.ongsOrdenadas
                                                                      .isNotEmpty) ==
                                                                  true
                                                              ? true
                                                              : false)
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(8.0),
                                                              child: Builder(
                                                                builder:
                                                                    (context) {
                                                                  final oNGs = _model
                                                                      .ongsOrdenadas
                                                                      .toList();

                                                                  return Wrap(
                                                                    spacing:
                                                                        12.0,
                                                                    runSpacing:
                                                                        16.0,
                                                                    alignment:
                                                                        WrapAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        WrapCrossAlignment
                                                                            .center,
                                                                    direction: Axis
                                                                        .horizontal,
                                                                    runAlignment:
                                                                        WrapAlignment
                                                                            .center,
                                                                    verticalDirection:
                                                                        VerticalDirection
                                                                            .down,
                                                                    clipBehavior:
                                                                        Clip.none,
                                                                    children: List.generate(
                                                                        oNGs.length,
                                                                        (oNGsIndex) {
                                                                      final oNGsItem =
                                                                          oNGs[
                                                                              oNGsIndex];
                                                                      return StreamBuilder<
                                                                          UsuariosRecord>(
                                                                        stream:
                                                                            UsuariosRecord.getDocument(oNGsItem),
                                                                        builder:
                                                                            (context,
                                                                                snapshot) {
                                                                          // Customize what your widget looks like when it's loading.
                                                                          if (!snapshot
                                                                              .hasData) {
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

                                                                          final ongsUsuariosRecord =
                                                                              snapshot.data!;

                                                                          return OngsWidget(
                                                                            key:
                                                                                Key('Keyyw9_${oNGsIndex}_of_${oNGs.length}'),
                                                                            ong:
                                                                                ongsUsuariosRecord.reference,
                                                                          );
                                                                        },
                                                                      );
                                                                    }),
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 350.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 4.0,
                                                            color: Color(
                                                                0x33000000),
                                                            offset: Offset(
                                                              0.0,
                                                              2.0,
                                                            ),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                            16.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      0.0),
                                                              child: Text(
                                                                'Apoio: ',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                              ),
                                                            ),
                                                            StreamBuilder<
                                                                List<
                                                                    ContribuidoresRecord>>(
                                                              stream:
                                                                  queryContribuidoresRecord(
                                                                limit: 6,
                                                              ),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          50.0,
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          SpinKitFadingCircle(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        size:
                                                                            50.0,
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                List<ContribuidoresRecord>
                                                                    wrapContribuidoresRecordList =
                                                                    snapshot
                                                                        .data!;

                                                                return Wrap(
                                                                  spacing: 32.0,
                                                                  runSpacing:
                                                                      24.0,
                                                                  alignment:
                                                                      WrapAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      WrapCrossAlignment
                                                                          .center,
                                                                  direction: Axis
                                                                      .horizontal,
                                                                  runAlignment:
                                                                      WrapAlignment
                                                                          .center,
                                                                  verticalDirection:
                                                                      VerticalDirection
                                                                          .down,
                                                                  clipBehavior:
                                                                      Clip.antiAlias,
                                                                  children: List.generate(
                                                                      wrapContribuidoresRecordList
                                                                          .length,
                                                                      (wrapIndex) {
                                                                    final wrapContribuidoresRecord =
                                                                        wrapContribuidoresRecordList[
                                                                            wrapIndex];
                                                                    return ApoiadorWidget(
                                                                      key: Key(
                                                                          'Keyd79_${wrapIndex}_of_${wrapContribuidoresRecordList.length}'),
                                                                      apoiador:
                                                                          wrapContribuidoresRecord
                                                                              .reference,
                                                                    );
                                                                  }),
                                                                );
                                                              },
                                                            ),
                                                          ].divide(SizedBox(
                                                              height: 16.0)),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 20.0)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, -1.0),
                              child: wrapWithModel(
                                model: _model.headerPrincipalModel,
                                updateCallback: () => safeSetState(() {}),
                                child: HeaderPrincipalWidget(
                                  drawer: () async {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 1.0),
                        child: wrapWithModel(
                          model: _model.rodapeModel,
                          updateCallback: () => safeSetState(() {}),
                          child: RodapeWidget(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
