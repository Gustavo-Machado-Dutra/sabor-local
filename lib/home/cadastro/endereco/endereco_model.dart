import '/backend/api_requests/api_calls.dart';
import '/component/enderecotablet/enderecotablet_widget.dart';
import '/component/volta/volta_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'endereco_widget.dart' show EnderecoWidget;
import 'package:flutter/material.dart';

class EnderecoModel extends FlutterFlowModel<EnderecoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for volta component.
  late VoltaModel voltaModel;
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
  // Model for enderecotablet component.
  late EnderecotabletModel enderecotabletModel;

  @override
  void initState(BuildContext context) {
    voltaModel = createModel(context, () => VoltaModel());
    enderecotabletModel = createModel(context, () => EnderecotabletModel());
  }

  @override
  void dispose() {
    voltaModel.dispose();
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

    enderecotabletModel.dispose();
  }
}
