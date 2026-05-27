import '/component/sucessotablet/sucessotablet_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'sucesso_widget.dart' show SucessoWidget;
import 'package:flutter/material.dart';

class SucessoModel extends FlutterFlowModel<SucessoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sucessotablet component.
  late SucessotabletModel sucessotabletModel;

  @override
  void initState(BuildContext context) {
    sucessotabletModel = createModel(context, () => SucessotabletModel());
  }

  @override
  void dispose() {
    sucessotabletModel.dispose();
  }
}
