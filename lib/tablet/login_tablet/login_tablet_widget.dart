import '/component/logintablet/logintablet_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'login_tablet_model.dart';
export 'login_tablet_model.dart';

class LoginTabletWidget extends StatefulWidget {
  const LoginTabletWidget({super.key});

  static String routeName = 'LoginTablet';
  static String routePath = '/loginTablet';

  @override
  State<LoginTabletWidget> createState() => _LoginTabletWidgetState();
}

class _LoginTabletWidgetState extends State<LoginTabletWidget> {
  late LoginTabletModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginTabletModel());
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
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFFFF1E9),
            ),
            child: wrapWithModel(
              model: _model.logintabletModel,
              updateCallback: () => safeSetState(() {}),
              child: LogintabletWidget(),
            ),
          ),
        ),
      ),
    );
  }
}
