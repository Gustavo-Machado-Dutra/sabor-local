import '/component/emailnumbertablet/emailnumbertablet_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'email_number_tablet_model.dart';
export 'email_number_tablet_model.dart';

class EmailNumberTabletWidget extends StatefulWidget {
  const EmailNumberTabletWidget({super.key});

  static String routeName = 'EmailNumberTablet';
  static String routePath = '/emailNumberTablet';

  @override
  State<EmailNumberTabletWidget> createState() =>
      _EmailNumberTabletWidgetState();
}

class _EmailNumberTabletWidgetState extends State<EmailNumberTabletWidget> {
  late EmailNumberTabletModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmailNumberTabletModel());
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
              model: _model.emailnumbertabletModel,
              updateCallback: () => safeSetState(() {}),
              child: EmailnumbertabletWidget(),
            ),
          ),
        ),
      ),
    );
  }
}
