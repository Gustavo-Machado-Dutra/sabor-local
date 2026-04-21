import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cod_verificacao_widget.dart' show CodVerificacaoWidget;
import 'package:flutter/material.dart';

class CodVerificacaoModel extends FlutterFlowModel<CodVerificacaoWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (EnviarEmail)] action in CodVerificacao widget.
  ApiCallResponse? apiResultmq8;
  // State field(s) for CodigoAdress widget.
  FocusNode? codigoAdressFocusNode;
  TextEditingController? codigoAdressTextController;
  String? Function(BuildContext, String?)? codigoAdressTextControllerValidator;
  // Stores action output result for [Backend Call - API (ValidarOTP)] action in Button widget.
  ApiCallResponse? apiResultValidarOTP;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    codigoAdressFocusNode?.dispose();
    codigoAdressTextController?.dispose();
  }
}
