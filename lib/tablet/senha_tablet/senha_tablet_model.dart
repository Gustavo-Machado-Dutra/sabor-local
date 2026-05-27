import '/component/senhatablet/senhatablet_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'senha_tablet_widget.dart' show SenhaTabletWidget;
import 'package:flutter/material.dart';

class SenhaTabletModel extends FlutterFlowModel<SenhaTabletWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for senhatablet component.
  late SenhatabletModel senhatabletModel;

  @override
  void initState(BuildContext context) {
    senhatabletModel = createModel(context, () => SenhatabletModel());
  }

  @override
  void dispose() {
    senhatabletModel.dispose();
  }
}
