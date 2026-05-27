import '/component/sucessotablet/sucessotablet_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'sucesso_tablet_model.dart';
export 'sucesso_tablet_model.dart';

class SucessoTabletWidget extends StatefulWidget {
  const SucessoTabletWidget({super.key});

  static String routeName = 'SucessoTablet';
  static String routePath = '/sucessoTablet';

  @override
  State<SucessoTabletWidget> createState() => _SucessoTabletWidgetState();
}

class _SucessoTabletWidgetState extends State<SucessoTabletWidget> {
  late SucessoTabletModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SucessoTabletModel());
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
            model: _model.sucessotabletModel,
            updateCallback: () => safeSetState(() {}),
            child: SucessotabletWidget(),
          ),
        ),
      ),
    );
  }
}
