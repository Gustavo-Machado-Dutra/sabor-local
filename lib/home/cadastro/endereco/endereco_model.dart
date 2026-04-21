import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'endereco_widget.dart' show EnderecoWidget;
import 'package:flutter/material.dart';

class EnderecoModel extends FlutterFlowModel<EnderecoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for BairroAdress widget.
  FocusNode? bairroAdressFocusNode;
  TextEditingController? bairroAdressTextController;
  String? Function(BuildContext, String?)? bairroAdressTextControllerValidator;
  // State field(s) for CEPAdress widget.
  FocusNode? cEPAdressFocusNode;
  TextEditingController? cEPAdressTextController;
  String? Function(BuildContext, String?)? cEPAdressTextControllerValidator;
  // Stores action output result for [Backend Call - API (CadastrarEndereco)] action in Buttonlogin widget.
  ApiCallResponse? apiResulEndereco;
  // Stores action output result for [Backend Call - API (Signup and retrieve an authentication token)] action in Buttonlogin widget.
  ApiCallResponse? apiResultCadastro;
  // State field(s) for NumeroAdress widget.
  FocusNode? numeroAdressFocusNode;
  TextEditingController? numeroAdressTextController;
  String? Function(BuildContext, String?)? numeroAdressTextControllerValidator;
  // State field(s) for LogradouroAdress widget.
  FocusNode? logradouroAdressFocusNode;
  TextEditingController? logradouroAdressTextController;
  String? Function(BuildContext, String?)?
      logradouroAdressTextControllerValidator;
  // State field(s) for ComplementoAdress widget.
  FocusNode? complementoAdressFocusNode;
  TextEditingController? complementoAdressTextController;
  String? Function(BuildContext, String?)?
      complementoAdressTextControllerValidator;
  // Stores action output result for [Backend Call - API (buscarCep)] action in Button widget.
  ApiCallResponse? apiResultadoCep;
  // State field(s) for ReferenciaAdress widget.
  FocusNode? referenciaAdressFocusNode;
  TextEditingController? referenciaAdressTextController;
  String? Function(BuildContext, String?)?
      referenciaAdressTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    bairroAdressFocusNode?.dispose();
    bairroAdressTextController?.dispose();

    cEPAdressFocusNode?.dispose();
    cEPAdressTextController?.dispose();

    numeroAdressFocusNode?.dispose();
    numeroAdressTextController?.dispose();

    logradouroAdressFocusNode?.dispose();
    logradouroAdressTextController?.dispose();

    complementoAdressFocusNode?.dispose();
    complementoAdressTextController?.dispose();

    referenciaAdressFocusNode?.dispose();
    referenciaAdressTextController?.dispose();
  }
}
