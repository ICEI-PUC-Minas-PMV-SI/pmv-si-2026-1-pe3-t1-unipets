import '/animais/detalhes_animais/detalhes_animais_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'animais_model.dart';
export 'animais_model.dart';

/// I want to create a component with details about animals.
///
/// It should have a photo on the left, with a column containing the name and
/// age.
///
/// Below that, there needs to be a 'block' for characteristics, such as
/// breed, color, size, temperament, etc.
///
/// Below that, another block for information about the NGO where the animal
/// is located, such as the NGO's name, location, and a button to get more
/// details about the NGO.
class AnimaisWidget extends StatefulWidget {
  const AnimaisWidget({
    super.key,
    this.animalReference,
  });

  final DocumentReference? animalReference;

  @override
  State<AnimaisWidget> createState() => _AnimaisWidgetState();
}

class _AnimaisWidgetState extends State<AnimaisWidget> {
  late AnimaisModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AnimaisModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await queryAnimaisRecordOnce(
        queryBuilder: (animaisRecord) => animaisRecord.where(
          'nome',
          isEqualTo: '',
        ),
        singleRecord: true,
      ).then((s) => s.firstOrNull);
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<AnimaisRecord>(
      stream: AnimaisRecord.getDocument(widget!.animalReference!),
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

        final containerAnimaisRecord = snapshot.data!;

        return Container(
          width: 250.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: StreamBuilder<UsuariosRecord>(
              stream: UsuariosRecord.getDocument(
                  containerAnimaisRecord.responsavelRef!),
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

                final columnUsuariosRecord = snapshot.data!;

                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            child: Wrap(
                              spacing: 16.0,
                              runSpacing: 16.0,
                              alignment: WrapAlignment.center,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              direction: Axis.horizontal,
                              runAlignment: WrapAlignment.center,
                              verticalDirection: VerticalDirection.down,
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  width: 200.0,
                                  height: 200.0,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    borderRadius:
                                        BorderRadius.circular(10000.0),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      valueOrDefault<String>(
                                        containerAnimaisRecord.foto.firstOrNull,
                                        'CAESoAVDaEpEYjI1MFlXbHVaWEpmYmpkbWJUWTNOVFVZQVNJYldnT0NBUUQ2QXdEeUJRMFNDUWtBQUFBQUFBRHdQeG9BNGdZQVlxRURFaHNLQmpoalkydzRkUklSQ2c4S0JXSnZkR0Z2RWdZNFkyTnNPSFVTVVFvR1pXeGplRzAyRWtjS0VBb0dhVzFoWjJWdEVnWmxiR040YlRZaU13Z0dRZ0lxQUVvTGdnRUlDZ1lLQkdadmRHOUtES29CQ1FnQkVnVUtBeElCTUlJQkR3b05WM0poY0Y5MWJuTm5ObUZvWnhKQkNnWjRkbVpzTmpRU053b09DZ1J1YjIxbEVnWjRkbVpzTmpRaUpRZ0dRZ0lxQUVvTGdnRUlDZ1lLQkc1dmJXV0NBUThLRFZkeVlYQmZkVzV6WnpaaGFHY1NRd29HYW05NFoydG1FamtLRHdvRmFXUmhaR1VTQm1wdmVHZHJaaUltQ0FaQ0Fpb0FTZ3lDQVFrS0J3b0ZhV1JoWkdXQ0FROEtEVmR5WVhCZmRXNXpaelpoYUdjU1NRb0dOV3A0WW5JM0VqOEtGZ29NZEdsd2IwUmxRVzVwYldGc0VnWTFhbmhpY2pjaUpRZ0dRZ0lxQUVvTGdnRUlDZ1lLQkhKaFkyR0NBUThLRFZkeVlYQmZkVzV6WnpaaGFHY1NSZ29HTm1GeGRXdGhFandLR1FvUFlXNXBiV0ZzVW1WbVpYSmxibU5sRWdZMllYRjFhMkVpSHdnR1FnSXFBRW9GZ2dFQ0VBR0NBUThLRFZkeVlYQmZkVzV6WnpaaGFHY3lGQW9TUTI5dWRHRnBibVZ5WHpBelozaDVialY1cWdFQ0NnRENBUURLQVJRS0VrTnZiblJoYVc1bGNsOHdNMmQ0ZVc0MWVRPT0=',
                                      ),
                                      width: 200.0,
                                      height: 200.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        containerAnimaisRecord.nome,
                                        style: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .headlineMediumIsCustom,
                                            ),
                                      ),
                                      Text(
                                        containerAnimaisRecord.especie,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLargeFamily,
                                              fontSize: 18.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyLargeIsCustom,
                                            ),
                                      ),
                                      Text(
                                        containerAnimaisRecord.idade,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLargeFamily,
                                              fontSize: 18.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyLargeIsCustom,
                                            ),
                                      ),
                                      Text(
                                        columnUsuariosRecord.cidade,
                                        style: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMediumFamily,
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .headlineMediumIsCustom,
                                            ),
                                      ),
                                    ].divide(SizedBox(height: 4.0)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ].divide(SizedBox(width: 16.0)),
                      ),
                    ),
                    Builder(
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
                                child: DetalhesAnimaisWidget(
                                  animal: widget!.animalReference!,
                                ),
                              );
                            },
                          );
                        },
                        text: 'Mais detalhes',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 48.0,
                          padding: EdgeInsets.all(8.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleSmallFamily,
                                color: Colors.white,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .titleSmallIsCustom,
                              ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(height: 16.0)),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
