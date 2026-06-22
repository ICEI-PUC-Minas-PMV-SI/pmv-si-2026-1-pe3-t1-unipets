import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'text_field_model.dart';
export 'text_field_model.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({
    super.key,
    String? label,
    bool? labelPresent,
    String? helper,
    bool? helperPresent,
    this.leadingIcon,
    bool? leadingIconPresent,
    this.trailingIcon,
    bool? trailingIconPresent,
    String? hint,
    String? value,
    String? onChange,
    String? onSubmit,
    String? variant,
    bool? error,
  })  : this.label = label ?? '',
        this.labelPresent = labelPresent ?? false,
        this.helper = helper ?? '',
        this.helperPresent = helperPresent ?? false,
        this.leadingIconPresent = leadingIconPresent ?? false,
        this.trailingIconPresent = trailingIconPresent ?? false,
        this.hint = hint ?? 'SlotValue(\$hint)',
        this.value = value ?? 'SlotValue(\$value)',
        this.onChange = onChange ?? '',
        this.onSubmit = onSubmit ?? '',
        this.variant = variant ?? 'ghost',
        this.error = error ?? false;

  final String label;
  final bool labelPresent;
  final String helper;
  final bool helperPresent;
  final Widget? leadingIcon;
  final bool leadingIconPresent;
  final Widget? trailingIcon;
  final bool trailingIconPresent;
  final String hint;
  final String value;
  final String onChange;
  final String onSubmit;
  final String variant;
  final bool error;

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  late TextFieldModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TextFieldModel());

    _model.inputTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget!.value,
      'SlotValue(\$value)',
    ));
    _model.inputFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (valueOrDefault<bool>(
            widget!.labelPresent,
            false,
          ))
            Text(
              widget!.label,
              style: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                    color: valueOrDefault<Color>(
                      valueOrDefault<bool>(
                        widget!.error,
                        false,
                      )
                          ? FlutterFlowTheme.of(context).error
                          : FlutterFlowTheme.of(context).primaryText,
                      FlutterFlowTheme.of(context).primaryText,
                    ),
                    letterSpacing: 0.0,
                    lineHeight: 1.38,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).labelMediumIsCustom,
                  ),
            ),
          Container(
            height: 40.0,
            decoration: BoxDecoration(
              color: valueOrDefault<Color>(
                () {
                  if (valueOrDefault<String>(
                        widget!.variant,
                        'ghost',
                      ) ==
                      'filled') {
                    return FlutterFlowTheme.of(context).secondaryBackground;
                  } else if (valueOrDefault<String>(
                        widget!.variant,
                        'ghost',
                      ) ==
                      'ghost') {
                    return Colors.transparent;
                  } else {
                    return Colors.transparent;
                  }
                }(),
                Colors.transparent,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(valueOrDefault<double>(
                  () {
                    if (valueOrDefault<String>(
                          widget!.variant,
                          'ghost',
                        ) ==
                        'filled') {
                      return 16.0;
                    } else if (valueOrDefault<String>(
                          widget!.variant,
                          'ghost',
                        ) ==
                        'ghost') {
                      return 16.0;
                    } else {
                      return 16.0;
                    }
                  }(),
                  16.0,
                )),
                topRight: Radius.circular(valueOrDefault<double>(
                  () {
                    if (valueOrDefault<String>(
                          widget!.variant,
                          'ghost',
                        ) ==
                        'filled') {
                      return 16.0;
                    } else if (valueOrDefault<String>(
                          widget!.variant,
                          'ghost',
                        ) ==
                        'ghost') {
                      return 16.0;
                    } else {
                      return 16.0;
                    }
                  }(),
                  16.0,
                )),
                bottomLeft: Radius.circular(valueOrDefault<double>(
                  () {
                    if (valueOrDefault<String>(
                          widget!.variant,
                          'ghost',
                        ) ==
                        'filled') {
                      return 16.0;
                    } else if (valueOrDefault<String>(
                          widget!.variant,
                          'ghost',
                        ) ==
                        'ghost') {
                      return 16.0;
                    } else {
                      return 16.0;
                    }
                  }(),
                  16.0,
                )),
                bottomRight: Radius.circular(valueOrDefault<double>(
                  () {
                    if (valueOrDefault<String>(
                          widget!.variant,
                          'ghost',
                        ) ==
                        'filled') {
                      return 16.0;
                    } else if (valueOrDefault<String>(
                          widget!.variant,
                          'ghost',
                        ) ==
                        'ghost') {
                      return 16.0;
                    } else {
                      return 16.0;
                    }
                  }(),
                  16.0,
                )),
              ),
              shape: BoxShape.rectangle,
              border: Border.all(
                color: valueOrDefault<Color>(
                  () {
                    if (valueOrDefault<bool>(
                      widget!.error,
                      false,
                    )) {
                      return FlutterFlowTheme.of(context).error;
                    } else if (valueOrDefault<String>(
                          widget!.variant,
                          'ghost',
                        ) ==
                        'filled') {
                      return Colors.transparent;
                    } else if (valueOrDefault<String>(
                          widget!.variant,
                          'ghost',
                        ) ==
                        'ghost') {
                      return Colors.transparent;
                    } else {
                      return FlutterFlowTheme.of(context).alternate;
                    }
                  }(),
                  Colors.transparent,
                ),
                width: valueOrDefault<double>(
                  () {
                    if (valueOrDefault<bool>(
                      widget!.error,
                      false,
                    )) {
                      return 1.0;
                    } else if (valueOrDefault<String>(
                          widget!.variant,
                          'ghost',
                        ) ==
                        'filled') {
                      return 1.0;
                    } else if (valueOrDefault<String>(
                          widget!.variant,
                          'ghost',
                        ) ==
                        'ghost') {
                      return 0.0;
                    } else {
                      return 1.0;
                    }
                  }(),
                  0.0,
                ),
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(
                  valueOrDefault<double>(
                    () {
                      if (valueOrDefault<String>(
                            widget!.variant,
                            'ghost',
                          ) ==
                          'filled') {
                        return 8.0;
                      } else if (valueOrDefault<String>(
                            widget!.variant,
                            'ghost',
                          ) ==
                          'ghost') {
                        return 8.0;
                      } else {
                        return 8.0;
                      }
                    }(),
                    8.0,
                  ),
                  valueOrDefault<double>(
                    () {
                      if (valueOrDefault<String>(
                            widget!.variant,
                            'ghost',
                          ) ==
                          'filled') {
                        return 8.0;
                      } else if (valueOrDefault<String>(
                            widget!.variant,
                            'ghost',
                          ) ==
                          'ghost') {
                        return 8.0;
                      } else {
                        return 8.0;
                      }
                    }(),
                    8.0,
                  ),
                  valueOrDefault<double>(
                    () {
                      if (valueOrDefault<String>(
                            widget!.variant,
                            'ghost',
                          ) ==
                          'filled') {
                        return 8.0;
                      } else if (valueOrDefault<String>(
                            widget!.variant,
                            'ghost',
                          ) ==
                          'ghost') {
                        return 8.0;
                      } else {
                        return 8.0;
                      }
                    }(),
                    8.0,
                  ),
                  valueOrDefault<double>(
                    () {
                      if (valueOrDefault<String>(
                            widget!.variant,
                            'ghost',
                          ) ==
                          'filled') {
                        return 8.0;
                      } else if (valueOrDefault<String>(
                            widget!.variant,
                            'ghost',
                          ) ==
                          'ghost') {
                        return 8.0;
                      } else {
                        return 8.0;
                      }
                    }(),
                    8.0,
                  )),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (valueOrDefault<bool>(
                    widget!.leadingIconPresent,
                    false,
                  ))
                    widget!.leadingIcon!,
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      controller: _model.inputTextController,
                      focusNode: _model.inputFocusNode,
                      obscureText: false,
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: valueOrDefault<String>(
                          widget!.hint,
                          'SlotValue(\$hint)',
                        ),
                        hintStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: valueOrDefault<Color>(
                                () {
                                  if (valueOrDefault<String>(
                                        widget!.variant,
                                        'ghost',
                                      ) ==
                                      'filled') {
                                    return FlutterFlowTheme.of(context).accent3;
                                  } else if (valueOrDefault<String>(
                                        widget!.variant,
                                        'ghost',
                                      ) ==
                                      'ghost') {
                                    return FlutterFlowTheme.of(context).accent3;
                                  } else {
                                    return FlutterFlowTheme.of(context).accent3;
                                  }
                                }(),
                                FlutterFlowTheme.of(context).accent3,
                              ),
                              letterSpacing: 0.0,
                              lineHeight: 1.47,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            color: valueOrDefault<Color>(
                              () {
                                if (valueOrDefault<String>(
                                      widget!.variant,
                                      'ghost',
                                    ) ==
                                    'filled') {
                                  return FlutterFlowTheme.of(context)
                                      .primaryText;
                                } else if (valueOrDefault<String>(
                                      widget!.variant,
                                      'ghost',
                                    ) ==
                                    'ghost') {
                                  return FlutterFlowTheme.of(context)
                                      .primaryText;
                                } else {
                                  return FlutterFlowTheme.of(context)
                                      .primaryText;
                                }
                              }(),
                              FlutterFlowTheme.of(context).primaryText,
                            ),
                            letterSpacing: 0.0,
                            lineHeight: 1.47,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .bodyMediumIsCustom,
                          ),
                      validator: _model.inputTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                  if (valueOrDefault<bool>(
                    widget!.trailingIconPresent,
                    false,
                  ))
                    widget!.trailingIcon!,
                ],
              ),
            ),
          ),
          if (valueOrDefault<bool>(
            widget!.helperPresent,
            false,
          ))
            Text(
              widget!.helper,
              style: FlutterFlowTheme.of(context).bodySmall.override(
                    fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                    color: valueOrDefault<Color>(
                      valueOrDefault<bool>(
                        widget!.error,
                        false,
                      )
                          ? FlutterFlowTheme.of(context).error
                          : FlutterFlowTheme.of(context).secondaryText,
                      FlutterFlowTheme.of(context).secondaryText,
                    ),
                    letterSpacing: 0.0,
                    lineHeight: 1.38,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).bodySmallIsCustom,
                  ),
            ),
        ].divide(SizedBox(height: 6.0)),
      ),
    );
  }
}
