import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'pagamento_widget.dart' show PagamentoWidget;
import 'package:flutter/material.dart';

class PagamentoModel extends FlutterFlowModel<PagamentoWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (criar_pagamento_asaas_fluxo_corrigido_xano)] action in Button widget.
  ApiCallResponse? pagamentopixCorrigido;
  // Stores action output result for [Backend Call - API (criar_pagamento_asaas_fluxo_corrigido_xano)] action in Button widget.
  ApiCallResponse? pagamentoboletoCorrigido;
  // Stores action output result for [Backend Call - API (criar_pagamento_asaas_fluxo_corrigido_xano)] action in Button widget.
  ApiCallResponse? pagamentocreditcardCorrigido;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
