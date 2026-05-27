import '/component/sucessotablet/sucessotablet_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'sucessologin_widget.dart' show SucessologinWidget;
import 'package:flutter/material.dart';

class SucessologinModel extends FlutterFlowModel<SucessologinWidget> {
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
