import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'paodequeijo_model.dart';
export 'paodequeijo_model.dart';

class PaodequeijoWidget extends StatefulWidget {
  const PaodequeijoWidget({super.key});

  @override
  State<PaodequeijoWidget> createState() => _PaodequeijoWidgetState();
}

class _PaodequeijoWidgetState extends State<PaodequeijoWidget>
    with TickerProviderStateMixin {
  late PaodequeijoModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaodequeijoModel());

    animationsMap.addAll({
      'imageOnPageLoadAnimation': AnimationInfo(
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
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(-1.32, -0.03),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(
          'assets/images/599c4f3a-9035-4cc7-a849-8d7a20bd8877.png',
          width: MediaQuery.sizeOf(context).width * 0.3,
          height: MediaQuery.sizeOf(context).height * 0.25,
          fit: BoxFit.cover,
        ),
      ).animateOnPageLoad(animationsMap['imageOnPageLoadAnimation']!),
    );
  }
}
