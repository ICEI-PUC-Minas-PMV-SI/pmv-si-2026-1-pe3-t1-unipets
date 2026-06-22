import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'artigo_model.dart';
export 'artigo_model.dart';

/// Now, create a component of the article itself.
///
/// It should contain a cover photo, a summary right below the headline (but
/// with less prominence than the title), and the main text with the content.
///
/// Generate a text talking about something from the animal world as an
/// example and add a cover photo.
class ArtigoWidget extends StatefulWidget {
  const ArtigoWidget({super.key});

  @override
  State<ArtigoWidget> createState() => _ArtigoWidgetState();
}

class _ArtigoWidgetState extends State<ArtigoWidget> {
  late ArtigoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ArtigoModel());

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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  topRight: Radius.circular(12.0),
                ),
                child: Image.network(
                  'https://images.unsplash.com/photo-1614720980566-0006ddd0772d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHJhbmRvbXx8fHx8fHx8fDE3Nzc4MTU5NzR8&ixlib=rb-4.1.0&q=80&w=1080',
                  width: double.infinity,
                  height: 260.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'The Secret Language of Elephants',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).headlineMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: !FlutterFlowTheme.of(context)
                              .headlineMediumIsCustom,
                        ),
                  ),
                  Text(
                    'Researchers have uncovered a remarkable communication system used by African elephants — one that spans miles of savanna and reveals a depth of social intelligence previously unknown to science.',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                        ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Deep in the heart of the Amboseli National Park in Kenya, a herd of African elephants moves slowly across the dusty plain. To the untrained eye, they appear silent. But beneath the threshold of human hearing, a rich and complex conversation is unfolding.',
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyLargeFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyLargeIsCustom,
                            ),
                      ),
                      Text(
                        'Scientists have long known that elephants produce infrasonic rumbles — low-frequency sounds that travel through both the air and the ground. What has only recently come to light, however, is just how sophisticated these vocalizations truly are. A landmark study published in the journal Nature Communications revealed that elephants use a vocabulary of over 100 distinct calls, each carrying specific meaning.',
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyLargeFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyLargeIsCustom,
                            ),
                      ),
                      Text(
                        '\"We were astonished to find that elephants have what appears to be a naming system,\" said Dr. Amara Osei, lead researcher on the project. \"Individual elephants respond to specific calls directed at them, much like humans respond to their own names. This level of referential communication was thought to be unique to humans and a handful of other primates.\"',
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyLargeFamily,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyLargeIsCustom,
                            ),
                      ),
                      Text(
                        'The implications of this discovery extend far beyond academic curiosity. Understanding how elephants communicate could revolutionize conservation efforts. By monitoring infrasonic signals, rangers can track herd movements, detect signs of distress, and even predict potential conflicts with local farming communities before they occur.',
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyLargeFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyLargeIsCustom,
                            ),
                      ),
                      Text(
                        'Elephants have also been observed teaching younger members of the herd specific calls associated with water sources and safe migration corridors — knowledge passed down across generations. This cultural transmission of information places elephants among an elite group of animals capable of true social learning.',
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyLargeFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyLargeIsCustom,
                            ),
                      ),
                      Text(
                        'As human encroachment continues to shrink elephant habitats across Africa and Asia, preserving not just the animals themselves but the rich cultural knowledge they carry becomes ever more urgent. In the words of Dr. Osei: \"When we lose an elephant, we don\'t just lose an individual. We lose a library.\"',
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyLargeFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyLargeIsCustom,
                            ),
                      ),
                    ].divide(SizedBox(height: 16.0)),
                  ),
                ].divide(SizedBox(height: 12.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
