import '/component/sucessopagamentotablet/sucessopagamentotablet_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'sucesso_pagamento_model.dart';
export 'sucesso_pagamento_model.dart';

class SucessoPagamentoWidget extends StatefulWidget {
  const SucessoPagamentoWidget({super.key});

  static String routeName = 'SucessoPagamento';
  static String routePath = '/sucessoPagamento';

  @override
  State<SucessoPagamentoWidget> createState() => _SucessoPagamentoWidgetState();
}

class _SucessoPagamentoWidgetState extends State<SucessoPagamentoWidget>
    with TickerProviderStateMixin {
  late SucessoPagamentoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SucessoPagamentoModel());

    animationsMap.addAll({
      'circleImageOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 2000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 2000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 2000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 2000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 2000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 2000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 2000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconOnPageLoadAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 2000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconOnPageLoadAnimation8': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 2000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF9E0D4),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              if (responsiveVisibility(
                context: context,
                tablet: false,
                tabletLandscape: false,
                desktop: false,
              ))
                Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-0.02, -0.77),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/0f8abb6e-d674-4427-b550-dc8968deb550.png',
                          width: MediaQuery.sizeOf(context).width * 0.5,
                          height: MediaQuery.sizeOf(context).height * 0.2,
                          fit: BoxFit.scaleDown,
                          alignment: Alignment(0.4, 0.0),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-2.03, -1.33),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/599c4f3a-9035-4cc7-a849-8d7a20bd8877.png',
                          width: 200.0,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.54, -0.38),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/599c4f3a-9035-4cc7-a849-8d7a20bd8877.png',
                          width: 143.5,
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(1.57, -1.11),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/599c4f3a-9035-4cc7-a849-8d7a20bd8877.png',
                          width: 143.5,
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.57, 0.69),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/599c4f3a-9035-4cc7-a849-8d7a20bd8877.png',
                          width: 143.5,
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.21, 1.32),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/599c4f3a-9035-4cc7-a849-8d7a20bd8877.png',
                          width: 200.0,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(2.03, 0.44),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/599c4f3a-9035-4cc7-a849-8d7a20bd8877.png',
                          width: 200.0,
                          height: 139.1,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(1.54, -0.29),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/599c4f3a-9035-4cc7-a849-8d7a20bd8877.png',
                          width: 143.5,
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.03, 0.11),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Container(
                          width: 200.0,
                          height: 200.0,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'assets/images/c4e8a663-8cf1-4f32-b0b4-241271cb1674.png',
                            fit: BoxFit.cover,
                          ),
                        ).animateOnPageLoad(
                            animationsMap['circleImageOnPageLoadAnimation']!),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.03, 0.1),
                      child: Icon(
                        Icons.check,
                        color: Color(0xFFFFEBE0),
                        size: 60.0,
                      ).animateOnPageLoad(
                          animationsMap['iconOnPageLoadAnimation1']!),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.21, 0.24),
                      child: Icon(
                        Icons.circle_sharp,
                        color: Color(0xFFFFEBE0),
                        size: 10.0,
                      ).animateOnPageLoad(
                          animationsMap['iconOnPageLoadAnimation2']!),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.29, -0.02),
                      child: Icon(
                        Icons.circle_sharp,
                        color: Color(0xFFFFEBE0),
                        size: 15.0,
                      ).animateOnPageLoad(
                          animationsMap['iconOnPageLoadAnimation3']!),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.62, 0.33),
                      child: Icon(
                        Icons.circle_sharp,
                        color: Color(0xFFFF9300),
                        size: 15.0,
                      ).animateOnPageLoad(
                          animationsMap['iconOnPageLoadAnimation4']!),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.6, 0.35),
                      child: Icon(
                        Icons.circle_sharp,
                        color: Color(0xFFFF9300),
                        size: 15.0,
                      ).animateOnPageLoad(
                          animationsMap['iconOnPageLoadAnimation5']!),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.11, 0.51),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 150.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context
                                .pushNamed(PagamentoPendenteWidget.routeName);
                          },
                          text: 'Ver Pagamento',
                          options: FFButtonOptions(
                            width: MediaQuery.sizeOf(context).width * 0.9,
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFFF46526),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Color(0xFFF6EDED),
                                  letterSpacing: 1.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                            elevation: 8.0,
                            borderSide: BorderSide(
                              color: Color(0xFF262424),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.11, 0.62),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 300.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed(CatalogodigitalWidget.routeName);
                          },
                          text: 'Ver Cardápio',
                          options: FFButtonOptions(
                            width: MediaQuery.sizeOf(context).width * 0.9,
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFFF46526),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Color(0xFFF8ECEC),
                                  letterSpacing: 1.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                            elevation: 8.0,
                            borderSide: BorderSide(
                              color: Color(0xFF242121),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, -0.3),
                      child: Text(
                        'Sucesso do Pagamento',
                        style:
                            FlutterFlowTheme.of(context).headlineLarge.override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineLarge
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  fontSize: 28.0,
                                  letterSpacing: 1.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .fontStyle,
                                ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.17, -0.07),
                      child: Icon(
                        Icons.circle_sharp,
                        color: Color(0xFFFFEBE0),
                        size: 11.0,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.64, -0.11),
                      child: Icon(
                        Icons.circle_sharp,
                        color: Color(0xFFFF9300),
                        size: 15.0,
                      ).animateOnPageLoad(
                          animationsMap['iconOnPageLoadAnimation6']!),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.6, -0.13),
                      child: Icon(
                        Icons.circle_sharp,
                        color: Color(0xFFFF9300),
                        size: 20.0,
                      ).animateOnPageLoad(
                          animationsMap['iconOnPageLoadAnimation7']!),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.16, 0.24),
                      child: Icon(
                        Icons.circle_sharp,
                        color: Color(0xFFFFEBE0),
                        size: 5.0,
                      ).animateOnPageLoad(
                          animationsMap['iconOnPageLoadAnimation8']!),
                    ),
                  ],
                ),
              wrapWithModel(
                model: _model.sucessopagamentotabletModel,
                updateCallback: () => safeSetState(() {}),
                child: SucessopagamentotabletWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
