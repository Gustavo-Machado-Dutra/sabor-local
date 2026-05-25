import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'pagamento_widget.dart' show PagamentoWidget;
import 'package:flutter/material.dart';

class PagamentoModel extends FlutterFlowModel<PagamentoWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - SincronizarUsuarioLogadoXano] action in PayPixButton widget.
  bool? pagamentoPixCriadoUsuarioSincronizado;
  // Stores action output result for [Backend Call - API (criar_pagamento_asaas_xano)] action in PayPixButton widget.
  ApiCallResponse? pagamentoPixCriado;
  // Stores action output result for [Custom Action - SincronizarUsuarioLogadoXano] action in PayBoletoButton widget.
  bool? pagamentoBoletoCriadoUsuarioSincronizado;
  // Stores action output result for [Backend Call - API (criar_pagamento_asaas_xano)] action in PayBoletoButton widget.
  ApiCallResponse? pagamentoBoletoCriado;
  // Stores action output result for [Custom Action - SincronizarUsuarioLogadoXano] action in PayCardButton widget.
  bool? pagamentoCartaoCriadoUsuarioSincronizado;
  // Stores action output result for [Backend Call - API (criar_pagamento_asaas_xano)] action in PayCardButton widget.
  ApiCallResponse? pagamentoCartaoCriado;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
