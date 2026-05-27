import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'sucesso_loginn_tablet_model.dart';
export 'sucesso_loginn_tablet_model.dart';

class SucessoLoginnTabletWidget extends StatefulWidget {
  const SucessoLoginnTabletWidget({super.key});

  static String routeName = 'SucessoLoginnTablet';
  static String routePath = '/sucessoLoginnTablet';

  @override
  State<SucessoLoginnTabletWidget> createState() =>
      _SucessoLoginnTabletWidgetState();
}

class _SucessoLoginnTabletWidgetState extends State<SucessoLoginnTabletWidget>
    with TickerProviderStateMixin {
  late SucessoLoginnTabletModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SucessoLoginnTabletModel());

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
      'iconOnPageLoadAnimation9': AnimationInfo(
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
      'iconOnPageLoadAnimation10': AnimationInfo(
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
      'iconOnPageLoadAnimation11': AnimationInfo(
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
      'iconOnPageLoadAnimation12': AnimationInfo(
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
      'iconOnPageLoadAnimation13': AnimationInfo(
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
      'iconOnPageLoadAnimation14': AnimationInfo(
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
      'iconOnPageLoadAnimation15': AnimationInfo(
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
      'iconOnPageLoadAnimation16': AnimationInfo(
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
      'iconOnPageLoadAnimation17': AnimationInfo(
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
      'iconOnPageLoadAnimation18': AnimationInfo(
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
      'iconOnPageLoadAnimation19': AnimationInfo(
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
      'iconOnPageLoadAnimation20': AnimationInfo(
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
      'iconOnPageLoadAnimation21': AnimationInfo(
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
        backgroundColor: Color(0xFFFFE9DC),
        body: SafeArea(
          top: true,
          child: Visibility(
            visible: responsiveVisibility(
              context: context,
              phone: false,
            ),
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0.02, -0.8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/0f8abb6e-d674-4427-b550-dc8968deb550.png',
                      height: MediaQuery.sizeOf(context).height * 0.18,
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
                    width: 300.0,
                    height: 300.0,
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
                  alignment: AlignmentDirectional(-0.03, 0.09),
                  child: Icon(
                    Icons.check,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    size: 80.0,
                  ).animateOnPageLoad(
                      animationsMap['iconOnPageLoadAnimation1']!),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.04, 0.25),
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
                  alignment: AlignmentDirectional(-0.18, -0.03),
                  child: Icon(
                    Icons.circle_sharp,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    size: 15.0,
                  ).animateOnPageLoad(
                      animationsMap['iconOnPageLoadAnimation3']!),
                ),
                Align(
                  alignment: AlignmentDirectional(0.08, 0.17),
                  child: Icon(
                    Icons.circle_sharp,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    size: 5.0,
                  ).animateOnPageLoad(
                      animationsMap['iconOnPageLoadAnimation4']!),
                ),
                Align(
                  alignment: AlignmentDirectional(0.39, 0.17),
                  child: Icon(
                    Icons.circle_sharp,
                    color: Color(0xFFFF9300),
                    size: 10.0,
                  ).animateOnPageLoad(
                      animationsMap['iconOnPageLoadAnimation5']!),
                ),
                Align(
                  alignment: AlignmentDirectional(0.14, -0.23),
                  child: Icon(
                    Icons.circle_sharp,
                    color: Color(0xFFFF9300),
                    size: 15.0,
                  ).animateOnPageLoad(
                      animationsMap['iconOnPageLoadAnimation6']!),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.13, 0.48),
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
                Align(
                  alignment: AlignmentDirectional(-0.02, -0.01),
                  child: Icon(
                    Icons.circle_sharp,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    size: 5.0,
                  ).animateOnPageLoad(
                      animationsMap['iconOnPageLoadAnimation9']!),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.15, 0.12),
                  child: Icon(
                    Icons.circle_sharp,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    size: 5.0,
                  ).animateOnPageLoad(
                      animationsMap['iconOnPageLoadAnimation10']!),
                ),
                Align(
                  alignment: AlignmentDirectional(0.15, -0.01),
                  child: Icon(
                    Icons.circle_sharp,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    size: 11.0,
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.53, -0.15),
                  child: Icon(
                    Icons.circle_sharp,
                    color: Color(0xFFFF9300),
                    size: 20.0,
                  ).animateOnPageLoad(
                      animationsMap['iconOnPageLoadAnimation11']!),
                ),
                Align(
                  alignment: AlignmentDirectional(0.73, 0.58),
                  child: Icon(
                    Icons.circle_sharp,
                    color: Color(0xFFFF9300),
                    size: 15.0,
                  ).animateOnPageLoad(
                      animationsMap['iconOnPageLoadAnimation12']!),
                ),
                Align(
                  alignment: AlignmentDirectional(0.6, -0.11),
                  child: Icon(
                    Icons.circle_sharp,
                    color: Color(0xFFFF9300),
                    size: 15.0,
                  ).animateOnPageLoad(
                      animationsMap['iconOnPageLoadAnimation13']!),
                ),
                Align(
                  alignment: AlignmentDirectional(0.24, 0.58),
                  child: Icon(
                    Icons.circle_sharp,
                    color: Color(0xFFFF9300),
                    size: 10.0,
                  ).animateOnPageLoad(
                      animationsMap['iconOnPageLoadAnimation14']!),
                ),
                Align(
                  alignment: AlignmentDirectional(0.46, -0.33),
                  child: Icon(
                    Icons.circle_sharp,
                    color: Color(0xFFFF9300),
                    size: 10.0,
                  ).animateOnPageLoad(
                      animationsMap['iconOnPageLoadAnimation15']!),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.46, 0.13),
                  child: Icon(
                    Icons.circle_sharp,
                    color: Color(0xFFFF9300),
                    size: 10.0,
                  ).animateOnPageLoad(
                      animationsMap['iconOnPageLoadAnimation16']!),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.33, -0.39),
                  child: Icon(
                    Icons.circle_sharp,
                    color: Color(0xFFFF9300),
                    size: 10.0,
                  ).animateOnPageLoad(
                      animationsMap['iconOnPageLoadAnimation17']!),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.45, 0.57),
                  child: Icon(
                    Icons.circle_sharp,
                    color: Color(0xFFFF9300),
                    size: 10.0,
                  ).animateOnPageLoad(
                      animationsMap['iconOnPageLoadAnimation18']!),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.83, 0.04),
                  child: Icon(
                    Icons.circle_sharp,
                    color: Color(0xFFFF9300),
                    size: 10.0,
                  ).animateOnPageLoad(
                      animationsMap['iconOnPageLoadAnimation19']!),
                ),
                Align(
                  alignment: AlignmentDirectional(0.69, 0.14),
                  child: Icon(
                    Icons.circle_sharp,
                    color: Color(0xFFFF9300),
                    size: 10.0,
                  ).animateOnPageLoad(
                      animationsMap['iconOnPageLoadAnimation20']!),
                ),
                Align(
                  alignment: AlignmentDirectional(0.4, 0.38),
                  child: Icon(
                    Icons.circle_sharp,
                    color: Color(0xFFFF9300),
                    size: 15.0,
                  ).animateOnPageLoad(
                      animationsMap['iconOnPageLoadAnimation21']!),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
