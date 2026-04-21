import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'tela_de_abertura_model.dart';
export 'tela_de_abertura_model.dart';

class TelaDeAberturaWidget extends StatefulWidget {
  const TelaDeAberturaWidget({super.key});

  static String routeName = 'TelaDeAbertura';
  static String routePath = '/telaDeAbertura';

  @override
  State<TelaDeAberturaWidget> createState() => _TelaDeAberturaWidgetState();
}

class _TelaDeAberturaWidgetState extends State<TelaDeAberturaWidget>
    with TickerProviderStateMixin {
  late TelaDeAberturaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TelaDeAberturaModel());

    animationsMap.addAll({
      'imageOnPageLoadAnimation1': AnimationInfo(
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
      'imageOnPageLoadAnimation2': AnimationInfo(
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
      'imageOnPageLoadAnimation3': AnimationInfo(
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
      'imageOnPageLoadAnimation4': AnimationInfo(
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
      'imageOnPageLoadAnimation5': AnimationInfo(
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
      'imageOnPageLoadAnimation6': AnimationInfo(
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
      'imageOnPageLoadAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 500.0.ms,
            duration: 2000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'imageOnPageLoadAnimation8': AnimationInfo(
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
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.pushNamed(
                LoginWidget.routeName,
                extra: <String, dynamic>{
                  '__transition_info__': TransitionInfo(
                    hasTransition: true,
                    transitionType: PageTransitionType.topToBottom,
                    duration: Duration(milliseconds: 10000),
                  ),
                },
              );
            },
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, -0.23),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/0f8abb6e-d674-4427-b550-dc8968deb550.png',
                      width: 334.1,
                      height: 170.0,
                      fit: BoxFit.cover,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['imageOnPageLoadAnimation1']!),
                ),
                Align(
                  alignment: AlignmentDirectional(-1.87, -1.01),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/599c4f3a-9035-4cc7-a849-8d7a20bd8877.png',
                      width: 200.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['imageOnPageLoadAnimation2']!),
                ),
                Align(
                  alignment: AlignmentDirectional(2.0, 1.04),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/599c4f3a-9035-4cc7-a849-8d7a20bd8877.png',
                      width: 200.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['imageOnPageLoadAnimation3']!),
                ),
                Align(
                  alignment: AlignmentDirectional(1.57, 0.28),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/599c4f3a-9035-4cc7-a849-8d7a20bd8877.png',
                      width: 143.5,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['imageOnPageLoadAnimation4']!),
                ),
                Align(
                  alignment: AlignmentDirectional(-1.28, 0.39),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/599c4f3a-9035-4cc7-a849-8d7a20bd8877.png',
                      width: 143.5,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['imageOnPageLoadAnimation5']!),
                ),
                Align(
                  alignment: AlignmentDirectional(1.53, -1.04),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/599c4f3a-9035-4cc7-a849-8d7a20bd8877.png',
                      width: 143.5,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['imageOnPageLoadAnimation6']!),
                ),
                Align(
                  alignment: AlignmentDirectional(0.07, -1.14),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/599c4f3a-9035-4cc7-a849-8d7a20bd8877.png',
                      width: 143.5,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['imageOnPageLoadAnimation7']!),
                ),
                Align(
                  alignment: AlignmentDirectional(-1.72, 1.3),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/599c4f3a-9035-4cc7-a849-8d7a20bd8877.png',
                      width: 200.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['imageOnPageLoadAnimation8']!),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
