import '/backend/api_requests/api_calls.dart';
import '/component/codverificacaotablet/codverificacaotablet_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cod_verificacaotablet_widget.dart' show CodVerificacaotabletWidget;
import 'package:flutter/material.dart';

class CodVerificacaotabletModel
    extends FlutterFlowModel<CodVerificacaotabletWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (EnviarEmail)] action in CodVerificacaotablet widget.
  ApiCallResponse? apiResultmq8;
  // Model for codverificacaotablet component.
  late CodverificacaotabletModel codverificacaotabletModel;

  @override
  void initState(BuildContext context) {
    codverificacaotabletModel =
        createModel(context, () => CodverificacaotabletModel());
  }

  @override
  void dispose() {
    codverificacaotabletModel.dispose();
  }
}
