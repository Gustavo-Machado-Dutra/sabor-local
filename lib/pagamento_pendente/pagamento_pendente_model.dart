import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'pagamento_pendente_widget.dart' show PagamentoPendenteWidget;
import 'package:flutter/material.dart';

class PagamentoPendenteModel extends FlutterFlowModel<PagamentoPendenteWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (consultar_status_pagamento_xano)] action in CheckPaymentStatusButton widget.
  ApiCallResponse? statusPagamentoConsultado;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
