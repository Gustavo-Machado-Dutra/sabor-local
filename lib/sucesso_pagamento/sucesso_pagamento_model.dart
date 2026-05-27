import '/component/sucessopagamentotablet/sucessopagamentotablet_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'sucesso_pagamento_widget.dart' show SucessoPagamentoWidget;
import 'package:flutter/material.dart';

class SucessoPagamentoModel extends FlutterFlowModel<SucessoPagamentoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sucessopagamentotablet component.
  late SucessopagamentotabletModel sucessopagamentotabletModel;

  @override
  void initState(BuildContext context) {
    sucessopagamentotabletModel =
        createModel(context, () => SucessopagamentotabletModel());
  }

  @override
  void dispose() {
    sucessopagamentotabletModel.dispose();
  }
}
