import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'endereco_copy_widget.dart' show EnderecoCopyWidget;
import 'package:flutter/material.dart';

class EnderecoCopyModel extends FlutterFlowModel<EnderecoCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CEPAdress widget.
  FocusNode? cEPAdressFocusNode;
  TextEditingController? cEPAdressTextController;
  String? Function(BuildContext, String?)? cEPAdressTextControllerValidator;
  // Stores action output result for [Backend Call - API (buscarCep)] action in Text widget.
  ApiCallResponse? apiResultadoCep;
  // State field(s) for LogradouroAdress widget.
  FocusNode? logradouroAdressFocusNode;
  TextEditingController? logradouroAdressTextController;
  String? Function(BuildContext, String?)?
      logradouroAdressTextControllerValidator;
  // State field(s) for NumeroAdress widget.
  FocusNode? numeroAdressFocusNode;
  TextEditingController? numeroAdressTextController;
  String? Function(BuildContext, String?)? numeroAdressTextControllerValidator;
  // State field(s) for BairroAdress widget.
  FocusNode? bairroAdressFocusNode;
  TextEditingController? bairroAdressTextController;
  String? Function(BuildContext, String?)? bairroAdressTextControllerValidator;
  // State field(s) for ComplementoAdress widget.
  FocusNode? complementoAdressFocusNode;
  TextEditingController? complementoAdressTextController;
  String? Function(BuildContext, String?)?
      complementoAdressTextControllerValidator;
  // State field(s) for ReferenciaAdress widget.
  FocusNode? referenciaAdressFocusNode;
  TextEditingController? referenciaAdressTextController;
  String? Function(BuildContext, String?)?
      referenciaAdressTextControllerValidator;
  // Stores action output result for [Backend Call - API (CadastrarEndereco)] action in Button widget.
  ApiCallResponse? apiResulEndereco;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    cEPAdressFocusNode?.dispose();
    cEPAdressTextController?.dispose();

    logradouroAdressFocusNode?.dispose();
    logradouroAdressTextController?.dispose();

    numeroAdressFocusNode?.dispose();
    numeroAdressTextController?.dispose();

    bairroAdressFocusNode?.dispose();
    bairroAdressTextController?.dispose();

    complementoAdressFocusNode?.dispose();
    complementoAdressTextController?.dispose();

    referenciaAdressFocusNode?.dispose();
    referenciaAdressTextController?.dispose();
  }
}
