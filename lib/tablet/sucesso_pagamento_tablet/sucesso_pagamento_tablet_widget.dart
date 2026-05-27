import '/component/sucessopagamentotablet/sucessopagamentotablet_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'sucesso_pagamento_tablet_model.dart';
export 'sucesso_pagamento_tablet_model.dart';

class SucessoPagamentoTabletWidget extends StatefulWidget {
  const SucessoPagamentoTabletWidget({super.key});

  static String routeName = 'SucessoPagamentoTablet';
  static String routePath = '/sucessoPagamentoTablet';

  @override
  State<SucessoPagamentoTabletWidget> createState() =>
      _SucessoPagamentoTabletWidgetState();
}

class _SucessoPagamentoTabletWidgetState
    extends State<SucessoPagamentoTabletWidget> {
  late SucessoPagamentoTabletModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SucessoPagamentoTabletModel());
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
        backgroundColor: Color(0xFFF9E0D4),
        body: SafeArea(
          top: true,
          child: wrapWithModel(
            model: _model.sucessopagamentotabletModel,
            updateCallback: () => safeSetState(() {}),
            child: SucessopagamentotabletWidget(),
          ),
        ),
      ),
    );
  }
}
