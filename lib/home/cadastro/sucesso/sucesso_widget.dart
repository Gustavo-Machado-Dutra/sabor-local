import '/component/sucessotablet/sucessotablet_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'sucesso_model.dart';
export 'sucesso_model.dart';

class SucessoWidget extends StatefulWidget {
  const SucessoWidget({super.key});

  static String routeName = 'Sucesso';
  static String routePath = '/sucesso';

  @override
  State<SucessoWidget> createState() => _SucessoWidgetState();
}

class _SucessoWidgetState extends State<SucessoWidget>
    with TickerProviderStateMixin {
  late SucessoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SucessoModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      context.pushNamed(
        LoginWidget.routeName,
        extra: <String, dynamic>{
          '__transition_info__': TransitionInfo(
            hasTransition: true,
            transitionType: PageTransitionType.fade,
            duration: Duration(milliseconds: 0),
          ),
        },
      );
    });

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
        backgroundColor: Color(0xFFFFF1E9),
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
                      alignment: AlignmentDirectional(0.54, -0.76),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/0f8abb6e-d674-4427-b550-dc8968deb550.png',
                          width: 386.8,
                          height: 170.0,
                          fit: BoxFit.scaleDown,
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
                    Align(
                      alignment: AlignmentDirectional(-0.04, 0.07),
                      child: Icon(
                        Icons.check,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        size: 60.0,
                      ).animateOnPageLoad(
                          animationsMap['iconOnPageLoadAnimation1']!),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.26, -0.01),
                      child: Icon(
                        Icons.circle_sharp,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        size: 11.0,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.27, 0.18),
                      child: Icon(
                        Icons.circle_sharp,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        size: 10.0,
                      ).animateOnPageLoad(
                          animationsMap['iconOnPageLoadAnimation2']!),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.26, -0.06),
                      child: Icon(
                        Icons.circle_sharp,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        size: 15.0,
                      ).animateOnPageLoad(
                          animationsMap['iconOnPageLoadAnimation3']!),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.12, 0.2),
                      child: Icon(
                        Icons.circle_sharp,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        size: 5.0,
                      ).animateOnPageLoad(
                          animationsMap['iconOnPageLoadAnimation4']!),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.43, 0.36),
                      child: Icon(
                        Icons.circle_sharp,
                        color: Color(0xFFFF9300),
                        size: 10.0,
                      ).animateOnPageLoad(
                          animationsMap['iconOnPageLoadAnimation5']!),
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
                      alignment: AlignmentDirectional(-0.53, -0.15),
                      child: Icon(
                        Icons.circle_sharp,
                        color: Color(0xFFFF9300),
                        size: 20.0,
                      ).animateOnPageLoad(
                          animationsMap['iconOnPageLoadAnimation7']!),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.59, 0.33),
                      child: Icon(
                        Icons.circle_sharp,
                        color: Color(0xFFFF9300),
                        size: 15.0,
                      ).animateOnPageLoad(
                          animationsMap['iconOnPageLoadAnimation8']!),
                    ),
                  ],
                ),
              wrapWithModel(
                model: _model.sucessotabletModel,
                updateCallback: () => safeSetState(() {}),
                child: SucessotabletWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
