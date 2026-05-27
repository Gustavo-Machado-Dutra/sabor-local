import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'codverificacaotablet_widget.dart' show CodverificacaotabletWidget;
import 'package:flutter/material.dart';

class CodverificacaotabletModel
    extends FlutterFlowModel<CodverificacaotabletWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for CodigoAdress widget.
  FocusNode? codigoAdressFocusNode;
  TextEditingController? codigoAdressTextController;
  String? Function(BuildContext, String?)? codigoAdressTextControllerValidator;
  // Stores action output result for [Backend Call - API (ValidarOTP)] action in Button widget.
  ApiCallResponse? apiResultValidarOTP;
  // Stores action output result for [Backend Call - API (EnviarEmail)] action in Text widget.
  ApiCallResponse? apiResultenvmail;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    codigoAdressFocusNode?.dispose();
    codigoAdressTextController?.dispose();
  }
}
