import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for EmailAddressLogin widget.
  FocusNode? emailAddressLoginFocusNode;
  TextEditingController? emailAddressLoginTextController;
  String? Function(BuildContext, String?)?
      emailAddressLoginTextControllerValidator;
  // State field(s) for SenhaAdressLogin widget.
  FocusNode? senhaAdressLoginFocusNode;
  TextEditingController? senhaAdressLoginTextController;
  late bool senhaAdressLoginVisibility;
  String? Function(BuildContext, String?)?
      senhaAdressLoginTextControllerValidator;
  // Stores action output result for [Custom Action - LoginXanoSalvarUsuario] action in Button widget.
  bool? loginXanoSalvo;

  @override
  void initState(BuildContext context) {
    senhaAdressLoginVisibility = false;
  }

  @override
  void dispose() {
    emailAddressLoginFocusNode?.dispose();
    emailAddressLoginTextController?.dispose();

    senhaAdressLoginFocusNode?.dispose();
    senhaAdressLoginTextController?.dispose();
  }
}
