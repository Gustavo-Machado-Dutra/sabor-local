import '/component/emailnumbertablet/emailnumbertablet_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'email_number_widget.dart' show EmailNumberWidget;
import 'package:flutter/material.dart';

class EmailNumberModel extends FlutterFlowModel<EmailNumberWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for EmailAdress widget.
  FocusNode? emailAdressFocusNode;
  TextEditingController? emailAdressTextController;
  String? Function(BuildContext, String?)? emailAdressTextControllerValidator;
  // State field(s) for Telefone widget.
  FocusNode? telefoneFocusNode;
  TextEditingController? telefoneTextController;
  String? Function(BuildContext, String?)? telefoneTextControllerValidator;
  // Model for emailnumbertablet component.
  late EmailnumbertabletModel emailnumbertabletModel;

  @override
  void initState(BuildContext context) {
    emailnumbertabletModel =
        createModel(context, () => EmailnumbertabletModel());
  }

  @override
  void dispose() {
    emailAdressFocusNode?.dispose();
    emailAdressTextController?.dispose();

    telefoneFocusNode?.dispose();
    telefoneTextController?.dispose();

    emailnumbertabletModel.dispose();
  }
}
