import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'senha_widget.dart' show SenhaWidget;
import 'package:flutter/material.dart';

class SenhaModel extends FlutterFlowModel<SenhaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for SenhaAdress widget.
  FocusNode? senhaAdressFocusNode;
  TextEditingController? senhaAdressTextController;
  late bool senhaAdressVisibility;
  String? Function(BuildContext, String?)? senhaAdressTextControllerValidator;
  // State field(s) for ConfirmarSenhaAdress widget.
  FocusNode? confirmarSenhaAdressFocusNode;
  TextEditingController? confirmarSenhaAdressTextController;
  late bool confirmarSenhaAdressVisibility;
  String? Function(BuildContext, String?)?
      confirmarSenhaAdressTextControllerValidator;
  // Stores action output result for [Custom Action - CadastrarUsuarioXano] action in Button widget.
  bool? cadastroXanoSalvo;

  @override
  void initState(BuildContext context) {
    senhaAdressVisibility = false;
    confirmarSenhaAdressVisibility = false;
  }

  @override
  void dispose() {
    senhaAdressFocusNode?.dispose();
    senhaAdressTextController?.dispose();

    confirmarSenhaAdressFocusNode?.dispose();
    confirmarSenhaAdressTextController?.dispose();
  }
}
