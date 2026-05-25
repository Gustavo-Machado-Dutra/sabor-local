import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'carrinho_widget.dart' show CarrinhoWidget;
import 'package:flutter/material.dart';

class CarrinhoModel extends FlutterFlowModel<CarrinhoWidget> {
  ///  Local state fields for this page.

  int quantidade = 1;

  ///  State fields for stateful widgets in this page.

  // State field(s) for CartObservationField widget.
  FocusNode? cartObservationFieldFocusNode;
  TextEditingController? cartObservationFieldTextController;
  String? Function(BuildContext, String?)?
      cartObservationFieldTextControllerValidator;
  // Stores action output result for [Custom Action - SincronizarUsuarioLogadoXano] action in CheckoutButton widget.
  bool? usuarioCarrinhoSincronizado;
  // Stores action output result for [Backend Call - API (mandarpedidos)] action in CheckoutButton widget.
  ApiCallResponse? pedidoCriadoPagamento;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    cartObservationFieldFocusNode?.dispose();
    cartObservationFieldTextController?.dispose();
  }
}
