import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'email_number_tablet_widget.dart' show EmailNumberTabletWidget;
import 'package:flutter/material.dart';

class EmailNumberTabletModel extends FlutterFlowModel<EmailNumberTabletWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for EmailAdress widget.
  FocusNode? emailAdressFocusNode;
  TextEditingController? emailAdressTextController;
  String? Function(BuildContext, String?)? emailAdressTextControllerValidator;
  // State field(s) for Telefone widget.
  FocusNode? telefoneFocusNode;
  TextEditingController? telefoneTextController;
  String? Function(BuildContext, String?)? telefoneTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAdressFocusNode?.dispose();
    emailAdressTextController?.dispose();

    telefoneFocusNode?.dispose();
    telefoneTextController?.dispose();
  }
}
