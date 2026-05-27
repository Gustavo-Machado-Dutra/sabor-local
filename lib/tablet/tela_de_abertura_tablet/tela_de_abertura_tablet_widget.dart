import '/component/tablettelainicial/tablettelainicial_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'tela_de_abertura_tablet_model.dart';
export 'tela_de_abertura_tablet_model.dart';

class TelaDeAberturaTabletWidget extends StatefulWidget {
  const TelaDeAberturaTabletWidget({super.key});

  static String routeName = 'TelaDeAberturaTablet';
  static String routePath = '/telaDeAberturaTablet';

  @override
  State<TelaDeAberturaTabletWidget> createState() =>
      _TelaDeAberturaTabletWidgetState();
}

class _TelaDeAberturaTabletWidgetState
    extends State<TelaDeAberturaTabletWidget> {
  late TelaDeAberturaTabletModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TelaDeAberturaTabletModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (Navigator.of(context).canPop()) {
        context.pop();
      }
      context.pushNamed(
        LoginTabletWidget.routeName,
        extra: <String, dynamic>{
          '__transition_info__': TransitionInfo(
            hasTransition: true,
            transitionType: PageTransitionType.fade,
            duration: Duration(milliseconds: 260),
          ),
        },
      );
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
          child: wrapWithModel(
            model: _model.tablettelainicialModel,
            updateCallback: () => safeSetState(() {}),
            child: TablettelainicialWidget(),
          ),
        ),
      ),
    );
  }
}
