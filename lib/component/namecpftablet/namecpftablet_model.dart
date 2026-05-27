import '/flutter_flow/flutter_flow_util.dart';
import 'namecpftablet_widget.dart' show NamecpftabletWidget;
import 'package:flutter/material.dart';

class NamecpftabletModel extends FlutterFlowModel<NamecpftabletWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for NomeAdress widget.
  FocusNode? nomeAdressFocusNode;
  TextEditingController? nomeAdressTextController;
  String? Function(BuildContext, String?)? nomeAdressTextControllerValidator;
  // State field(s) for CPFAdress widget.
  FocusNode? cPFAdressFocusNode;
  TextEditingController? cPFAdressTextController;
  String? Function(BuildContext, String?)? cPFAdressTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomeAdressFocusNode?.dispose();
    nomeAdressTextController?.dispose();

    cPFAdressFocusNode?.dispose();
    cPFAdressTextController?.dispose();
  }
}
