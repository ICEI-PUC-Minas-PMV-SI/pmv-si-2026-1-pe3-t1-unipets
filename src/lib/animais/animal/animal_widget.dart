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
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'animal_model.dart';
export 'animal_model.dart';

class AnimalWidget extends StatefulWidget {
  const AnimalWidget({super.key});

  static String routeName = 'Animal';
  static String routePath = '/animal';

  @override
  State<AnimalWidget> createState() => _AnimalWidgetState();
}

class _AnimalWidgetState extends State<AnimalWidget>
    with TickerProviderStateMixin {
  late AnimalModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AnimalModel());

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
    return StreamBuilder<List<AnimaisRecord>>(
      stream: queryAnimaisRecord(
        queryBuilder: (animaisRecord) => animaisRecord
            .where(
              'nome',
              isGreaterThanOrEqualTo:
                  _model.pesquisa != '' ? _model.pesquisa : null,
            )
            .where(
              'nome',
              isLessThanOrEqualTo:
                  _model.pesquisa != '' ? _model.pesquisa : null,
            )
            .where(
              'especie',
              isEqualTo: _model.especie != '' ? _model.especie : null,
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
        List<AnimaisRecord> animalAnimaisRecordList = snapshot.data!;

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
                              alignment: AlignmentDirectional(0.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 70.0, 0.0, 0.0),
                                child: SingleChildScrollView(
                                  primary: false,
                                  controller: _model.columnController2,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, -1.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 16.0, 24.0, 16.0),
                                          child: Text(
                                            'Animais',
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
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
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
                                                  if (loggedIn)
                                                    FFButtonWidget(
                                                      onPressed: () async {
                                                        if (!(_model.filtrados
                                                            .isNotEmpty)) {
                                                          _model.filtro =
                                                              await actions
                                                                  .sortAnimais(
                                                            currentUserDocument!
                                                                .latitudelong!,
                                                            animalAnimaisRecordList
                                                                .toList(),
                                                          );
                                                          _model.filtrados = _model
                                                              .filtro!
                                                              .toList()
                                                              .cast<
                                                                  AnimaisRecord>();
                                                          safeSetState(() {});
                                                        } else {
                                                          _model.filtrados = [];
                                                          safeSetState(() {});
                                                        }

                                                        safeSetState(() {});
                                                      },
                                                      text:
                                                          'Encontrar animais perto de mim',
                                                      options: FFButtonOptions(
                                                        height: 40.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    16.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily,
                                                                  color: Colors
                                                                      .white,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmallIsCustom,
                                                                ),
                                                        elevation: 0.0,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                  if (loggedIn)
                                                    Builder(
                                                      builder: (context) =>
                                                          FFButtonWidget(
                                                        onPressed: () async {
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (dialogContext) {
                                                              return Dialog(
                                                                elevation: 0,
                                                                insetPadding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                alignment: AlignmentDirectional(
                                                                        0.0,
                                                                        0.0)
                                                                    .resolve(
                                                                        Directionality.of(
                                                                            context)),
                                                                child:
                                                                    GestureDetector(
                                                                  onTap: () {
                                                                    FocusScope.of(
                                                                            dialogContext)
                                                                        .unfocus();
                                                                    FocusManager
                                                                        .instance
                                                                        .primaryFocus
                                                                        ?.unfocus();
                                                                  },
                                                                  child:
                                                                      CriarAnimalWidget(),
                                                                ),
                                                              );
                                                            },
                                                          );
                                                        },
                                                        text:
                                                            'Cadastrar um animal',
                                                        options:
                                                            FFButtonOptions(
                                                          height: 40.0,
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      0.0,
                                                                      16.0,
                                                                      0.0),
                                                          iconPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleSmallFamily,
                                                                    color: Colors
                                                                        .white,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .titleSmallIsCustom,
                                                                  ),
                                                          elevation: 0.0,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                      ),
                                                    ),
                                                ].divide(SizedBox(width: 12.0)),
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              1.0, 0.0),
                                                      child: Builder(
                                                        builder: (context) =>
                                                            InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await showDialog(
                                                              context: context,
                                                              builder:
                                                                  (dialogContext) {
                                                                return Dialog(
                                                                  elevation: 0,
                                                                  insetPadding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .transparent,
                                                                  alignment: AlignmentDirectional(
                                                                          0.0,
                                                                          0.0)
                                                                      .resolve(
                                                                          Directionality.of(
                                                                              context)),
                                                                  child:
                                                                      GestureDetector(
                                                                    onTap: () {
                                                                      FocusScope.of(
                                                                              dialogContext)
                                                                          .unfocus();
                                                                      FocusManager
                                                                          .instance
                                                                          .primaryFocus
                                                                          ?.unfocus();
                                                                    },
                                                                    child:
                                                                        FiltroAnimaisWidget(
                                                                      peso:
                                                                          (peso) async {
                                                                        _model.peso =
                                                                            peso;
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                      raca:
                                                                          (raca) async {
                                                                        _model.raca =
                                                                            raca;
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                      porte:
                                                                          (porte) async {
                                                                        _model.porte =
                                                                            porte;
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                      sexo:
                                                                          (sexo) async {
                                                                        _model.sexo =
                                                                            sexo;
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                      castrado:
                                                                          (castrado) async {
                                                                        _model.castrado =
                                                                            castrado;
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                      especie:
                                                                          (especie) async {
                                                                        _model.especie =
                                                                            especie;
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            );
                                                          },
                                                          child: Icon(
                                                            Icons.filter_alt,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 24.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      'Filtrar animais',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeIsCustom,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 12.0)),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 20.0, 20.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            if ((_model.filtrados.isNotEmpty) ==
                                                    false
                                                ? false
                                                : true)
                                              Flexible(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, -1.0),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final animais = functions
                                                              .filtraAnimais(
                                                                  _model
                                                                      .filtrados
                                                                      .toList(),
                                                                  _model.porte,
                                                                  _model
                                                                      .castrado,
                                                                  _model.peso,
                                                                  _model.raca,
                                                                  _model.sexo)
                                                              ?.toList() ??
                                                          [];

                                                      return Wrap(
                                                        spacing: 16.0,
                                                        runSpacing: 16.0,
                                                        alignment:
                                                            WrapAlignment.start,
                                                        crossAxisAlignment:
                                                            WrapCrossAlignment
                                                                .start,
                                                        direction:
                                                            Axis.horizontal,
                                                        runAlignment:
                                                            WrapAlignment.start,
                                                        verticalDirection:
                                                            VerticalDirection
                                                                .down,
                                                        clipBehavior: Clip.none,
                                                        children: List.generate(
                                                            animais.length,
                                                            (animaisIndex) {
                                                          final animaisItem =
                                                              animais[
                                                                  animaisIndex];
                                                          return AnimaisWidget(
                                                            key: Key(
                                                                'Keyn7f_${animaisIndex}_of_${animais.length}'),
                                                            animalReference:
                                                                animaisItem
                                                                    .reference,
                                                          );
                                                        }),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            if ((_model.filtrados.isNotEmpty) ==
                                                    false
                                                ? true
                                                : false)
                                              Flexible(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, -1.0),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final animais = functions
                                                              .filtraAnimais(
                                                                  animalAnimaisRecordList
                                                                      .toList(),
                                                                  _model.porte,
                                                                  _model
                                                                      .castrado,
                                                                  _model.peso,
                                                                  _model.raca,
                                                                  _model.sexo)
                                                              ?.toList() ??
                                                          [];

                                                      return Wrap(
                                                        spacing: 16.0,
                                                        runSpacing: 16.0,
                                                        alignment:
                                                            WrapAlignment.start,
                                                        crossAxisAlignment:
                                                            WrapCrossAlignment
                                                                .start,
                                                        direction:
                                                            Axis.horizontal,
                                                        runAlignment:
                                                            WrapAlignment.start,
                                                        verticalDirection:
                                                            VerticalDirection
                                                                .down,
                                                        clipBehavior: Clip.none,
                                                        children: List.generate(
                                                            animais.length,
                                                            (animaisIndex) {
                                                          final animaisItem =
                                                              animais[
                                                                  animaisIndex];
                                                          return AnimaisWidget(
                                                            key: Key(
                                                                'Keysbo_${animaisIndex}_of_${animais.length}'),
                                                            animalReference:
                                                                animaisItem
                                                                    .reference,
                                                          );
                                                        }),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                          ].divide(SizedBox(width: 20.0)),
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
