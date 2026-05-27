import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'ver_produtotablet_widget.dart' show VerProdutotabletWidget;
import 'package:flutter/material.dart';

class VerProdutotabletModel extends FlutterFlowModel<VerProdutotabletWidget> {
  ///  Local state fields for this page.

  int? quantidade = 1;

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
