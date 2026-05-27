import '/component/sucessopagamentotablet/sucessopagamentotablet_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'sucesso_pagamento_tablet_widget.dart' show SucessoPagamentoTabletWidget;
import 'package:flutter/material.dart';

class SucessoPagamentoTabletModel
    extends FlutterFlowModel<SucessoPagamentoTabletWidget> {
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
