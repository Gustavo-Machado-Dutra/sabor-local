import '/components/paodequeijo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'tela_de_abertura_copy_widget.dart' show TelaDeAberturaCopyWidget;
import 'package:flutter/material.dart';

class TelaDeAberturaCopyModel
    extends FlutterFlowModel<TelaDeAberturaCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for paodequeijo component.
  late PaodequeijoModel paodequeijoModel;

  @override
  void initState(BuildContext context) {
    paodequeijoModel = createModel(context, () => PaodequeijoModel());
  }

  @override
  void dispose() {
    paodequeijoModel.dispose();
  }
}
