import '/component/namecpftablet/namecpftablet_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'name_cpf_widget.dart' show NameCpfWidget;
import 'package:flutter/material.dart';

class NameCpfModel extends FlutterFlowModel<NameCpfWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for NomeAdress widget.
  FocusNode? nomeAdressFocusNode;
  TextEditingController? nomeAdressTextController;
  String? Function(BuildContext, String?)? nomeAdressTextControllerValidator;
  // State field(s) for CPFAdress widget.
  FocusNode? cPFAdressFocusNode;
  TextEditingController? cPFAdressTextController;
  String? Function(BuildContext, String?)? cPFAdressTextControllerValidator;
  // Model for namecpftablet component.
  late NamecpftabletModel namecpftabletModel;

  @override
  void initState(BuildContext context) {
    namecpftabletModel = createModel(context, () => NamecpftabletModel());
  }

  @override
  void dispose() {
    nomeAdressFocusNode?.dispose();
    nomeAdressTextController?.dispose();

    cPFAdressFocusNode?.dispose();
    cPFAdressTextController?.dispose();

    namecpftabletModel.dispose();
  }
}
