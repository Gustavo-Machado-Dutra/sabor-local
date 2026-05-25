import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'ver_produto_tablet_widget.dart' show VerProdutoTabletWidget;
import 'package:flutter/material.dart';

class VerProdutoTabletModel extends FlutterFlowModel<VerProdutoTabletWidget> {
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
