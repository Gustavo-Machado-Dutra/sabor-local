import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'catalogodigital_widget.dart' show CatalogodigitalWidget;
import 'package:flutter/material.dart';

class CatalogodigitalModel extends FlutterFlowModel<CatalogodigitalWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
