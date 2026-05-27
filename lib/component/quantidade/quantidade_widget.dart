import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'quantidade_model.dart';
export 'quantidade_model.dart';

class QuantidadeWidget extends StatefulWidget {
  const QuantidadeWidget({
    super.key,
    required this.parameter1,
  });

  final int? parameter1;

  @override
  State<QuantidadeWidget> createState() => _QuantidadeWidgetState();
}

class _QuantidadeWidgetState extends State<QuantidadeWidget> {
  late QuantidadeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuantidadeModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Stack(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 20.0),
              child: Container(
                width: 100.0,
                height: 82.3,
                decoration: BoxDecoration(
                  color: Color(0x00FFFFFF),
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 40.0, 0.0),
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderRadius: 8.0,
                          buttonSize: 40.0,
                          fillColor: FlutterFlowTheme.of(context).tertiary,
                          icon: Icon(
                            Icons.remove,
                            color: Color(0xFFFBF4F4),
                            size: 24.0,
                          ),
                          onPressed: () {
                            print('btndiminui pressed ...');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
              child: Container(
                width: 100.0,
                height: 78.9,
                decoration: BoxDecoration(
                  color: Color(0x00F8F0F0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 20.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.7,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Color(0x00FFFFFF),
                  borderRadius: BorderRadius.circular(2.0),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(1.02, -0.56),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderRadius: 8.0,
                          buttonSize: 40.0,
                          fillColor: FlutterFlowTheme.of(context).tertiary,
                          icon: Icon(
                            Icons.add,
                            color: Color(0xFFFBF4F4),
                            size: 24.0,
                          ),
                          onPressed: () {
                            print('btnaumentar pressed ...');
                          },
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.07, -0.19),
                      child: Text(
                        widget.parameter1!.toString(),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
