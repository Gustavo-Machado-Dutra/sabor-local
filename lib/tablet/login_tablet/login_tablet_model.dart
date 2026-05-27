import '/component/logintablet/logintablet_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_tablet_widget.dart' show LoginTabletWidget;
import 'package:flutter/material.dart';

class LoginTabletModel extends FlutterFlowModel<LoginTabletWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for logintablet component.
  late LogintabletModel logintabletModel;

  @override
  void initState(BuildContext context) {
    logintabletModel = createModel(context, () => LogintabletModel());
  }

  @override
  void dispose() {
    logintabletModel.dispose();
  }
}
