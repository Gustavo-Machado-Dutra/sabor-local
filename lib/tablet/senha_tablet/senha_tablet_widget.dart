import '/component/senhatablet/senhatablet_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'senha_tablet_model.dart';
export 'senha_tablet_model.dart';

class SenhaTabletWidget extends StatefulWidget {
  const SenhaTabletWidget({super.key});

  static String routeName = 'SenhaTablet';
  static String routePath = '/senhaTablet';

  @override
  State<SenhaTabletWidget> createState() => _SenhaTabletWidgetState();
}

class _SenhaTabletWidgetState extends State<SenhaTabletWidget> {
  late SenhaTabletModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SenhaTabletModel());
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
        backgroundColor: Color(0xFFF4F0EE),
        body: SafeArea(
          top: true,
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFFFF1E9),
            ),
            child: wrapWithModel(
              model: _model.senhatabletModel,
              updateCallback: () => safeSetState(() {}),
              child: SenhatabletWidget(),
            ),
          ),
        ),
      ),
    );
  }
}
