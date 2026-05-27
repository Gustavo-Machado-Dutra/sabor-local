import '/component/namecpftablet/namecpftablet_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'name_cpf_tablet_model.dart';
export 'name_cpf_tablet_model.dart';

class NameCpfTabletWidget extends StatefulWidget {
  const NameCpfTabletWidget({super.key});

  static String routeName = 'NameCpfTablet';
  static String routePath = '/nameCpfTablet';

  @override
  State<NameCpfTabletWidget> createState() => _NameCpfTabletWidgetState();
}

class _NameCpfTabletWidgetState extends State<NameCpfTabletWidget> {
  late NameCpfTabletModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NameCpfTabletModel());
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
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFFFF1E9),
            ),
            child: wrapWithModel(
              model: _model.namecpftabletModel,
              updateCallback: () => safeSetState(() {}),
              child: NamecpftabletWidget(),
            ),
          ),
        ),
      ),
    );
  }
}
